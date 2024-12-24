// ignore_for_file: avoid_print

import 'dart:io';
import 'package:xml/xml.dart';
import 'dart:convert';
import 'package:html/parser.dart' as parser;

void main() async {
  final inputFile = File('subsonic-rest-api-1.16.1.xsd');
  final outputFile = File('lib/models/subsonic.dart');

  final xmlContent = await inputFile.readAsString();
  final document = XmlDocument.parse(xmlContent);

  final schema = document.findAllElements('xs:schema').first;
  final dartCode = generateDartCode(schema);

  await outputFile.writeAsString(dartCode);
  print('Generated Dart file at ${outputFile.path}');

  await generateApiDocsJson(File('Subsonic.html'), File('subsonic_api.json'));
  print(
      'API documentation has been successfully parsed and saved to subsonic_api.json');
  await generateProviders(
    File('subsonic_api.json'),
    File('lib/providers/subsonic_apis.dart'),
  );
  print(
      'Providers have been generated succesfully and saved to lib/providers/subsonic_apis.dart');
}

String generateDartCode(XmlElement schema) {
  final buffer = StringBuffer();

  // Write file header
  buffer.writeln('''
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subsonic.g.dart';
part 'subsonic.freezed.dart';
''');

  // Process all simple types (enums) first
  for (final simpleType in schema.findAllElements('xs:simpleType')) {
    final typeName = simpleType.getAttribute('name');
    if (typeName != null) {
      buffer.writeln(processSimpleType(simpleType, typeName));
    }
  }

  // Process all complex types
  for (final complexType in schema.findAllElements('xs:complexType')) {
    final typeName = complexType.getAttribute('name');
    if (typeName != null) {
      buffer.writeln(processComplexType(schema, complexType, typeName));
    }
  }

  return buffer.toString();
}

String processSimpleType(XmlElement type, String typeName) {
  final buffer = StringBuffer();
  final enumName = toPascalCase(typeName);
  final restriction = type.findAllElements('xs:restriction').firstOrNull;

  if (restriction != null) {
    final baseType = restriction.getAttribute('base');
    final enumerations = restriction.findAllElements('xs:enumeration').toList();

    if (enumerations.isNotEmpty) {
      // Generate enum
      buffer.writeln('@JsonEnum()');
      buffer.writeln('enum $enumName {');

      // Add enum values
      for (final enumValue in enumerations) {
        final value = enumValue.getAttribute('value');
        if (value != null) {
          final enumConstant = toEnumConstant(value);
          buffer.writeln('  @JsonValue(\'$value\')');
          buffer.writeln(
              '  ${toCamelCase(enumName + toPascalCase(enumConstant))},');
        }
      }

      // Close enum and add fromJson/toJson extension
      buffer.writeln('}');
      buffer.writeln();
    } else if (baseType == 'xs:string' &&
        restriction.findAllElements('xs:pattern').firstOrNull != null) {
      // Handle pattern-based string types (like Version)
      buffer.writeln('typedef $enumName = String;');
      buffer.writeln();
    } else if (baseType == 'xs:int' || baseType == 'xs:double') {
      // Handle numeric restrictions
      final min = restriction
          .findAllElements('xs:minInclusive')
          .firstOrNull
          ?.getAttribute('value');
      final max = restriction
          .findAllElements('xs:maxInclusive')
          .firstOrNull
          ?.getAttribute('value');

      buffer.writeln('/// Numeric type with constraints:');
      if (min != null) buffer.writeln('/// - Minimum value: $min');
      if (max != null) buffer.writeln('/// - Maximum value: $max');
      buffer.writeln('typedef $enumName = ${getDartType(baseType!)};');
      buffer.writeln();
    }
  }

  return buffer.toString();
}

String toEnumConstant(String value) {
  // Handle special cases and convert to valid Dart enum constant
  final sanitized = value
      .replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_')
      .replaceAll(RegExp(r'_+'), '_')
      .toLowerCase();

  // Ensure it doesn't start with a number
  if (RegExp(r'^[0-9]').hasMatch(sanitized)) {
    return 'value_$sanitized';
  }

  return sanitized;
}

String processComplexType(XmlElement doc, XmlElement type, String typeName) {
  final buffer = StringBuffer();
  final className = toPascalCase(typeName);

  // Check for inheritance
  final baseType = type
      .getElement('xs:complexContent')
      ?.getElement('xs:extension')
      ?.getAttribute('base')
      ?.replaceAll('sub:', '');

  buffer.writeln('@freezed');
  buffer.writeln('class $className with _\$$className {');
  buffer.writeln('  const factory $className({');

  final baseTypeElementIndex =
      doc.children.indexWhere((test) => test.getAttribute('name') == baseType);
  final baseTypeElement =
      baseTypeElementIndex > 0 ? doc.children[baseTypeElementIndex] : null;

  final elements = [
    ...type.findAllElements('xs:attribute'),
    if (baseTypeElement != null)
      ...baseTypeElement.findAllElements('xs:attribute'),
  ];
  // Process attributes
  for (final attribute in elements) {
    final attrName = attribute.getAttribute('name')!;
    final attrType = attribute.getAttribute('type')!;
    final required = attribute.getAttribute('use') == 'required';

    final fieldName = toCamelCase(attrName);
    final dartType = getDartType(attrType);

    buffer.writeln('    @JsonKey(name: \'$attrName\')');
    buffer.writeln(
        '    ${required ? 'required ' : ''}$dartType${required ? '' : '?'} $fieldName,');
  }

  for (final choice in type.findAllElements('xs:choice')) {
    for (final attribute in choice.findAllElements('xs:element')) {
      final attrName = attribute.getAttribute('name')!;
      final attrType = attribute.getAttribute('type')!;
      final fieldName = toCamelCase(attrName);
      final dartType = getDartType(attrType);

      buffer.writeln('    @JsonKey(name: \'$attrName\')');
      buffer.writeln('    $dartType? $fieldName,');
    }
  }
  // Process elements
  final sequence = type.findAllElements('xs:sequence').firstOrNull;
  final baseTypeSequence =
      baseTypeElement?.findAllElements('xs:sequence').firstOrNull;
  final sequences = <XmlElement>[];
  if (sequence != null) sequences.add(sequence);
  if (baseTypeSequence != null) sequences.add(baseTypeSequence);

  for (final sequence in sequences) {
    for (final element in sequence.findAllElements('xs:element')) {
      final elemName = element.getAttribute('name')!;
      final elemType = element.getAttribute('type')!.replaceFirst('sub:', '');
      final minOccurs = element.getAttribute('minOccurs');
      final maxOccurs = element.getAttribute('maxOccurs');

      final fieldName = toCamelCase(elemName);
      final dartType = getDartType(elemType);
      final required = minOccurs == '1';
      final isList = maxOccurs == 'unbounded';

      buffer.writeln('    @JsonKey(name: \'$elemName\')');
      if (isList) {
        buffer.writeln(
            '    ${required ? 'required ' : ''}List<$dartType>${required ? '' : '?'} $fieldName,');
      } else {
        buffer.writeln(
            '    ${required ? 'required ' : ''}$dartType${required ? '' : '?'} $fieldName,');
      }
    }
  }

  // Close class definition
  buffer.writeln('  }) = _$className;');
  buffer.writeln();
  buffer.writeln('  factory $className.fromJson(Map<String, dynamic> json) =>');
  buffer.writeln('      _\$${className}FromJson(json);');
  buffer.writeln('}');
  buffer.writeln();

  return buffer.toString();
}

String getDartType(String xmlType) {
  switch (xmlType.trim()) {
    case 'xs:string':
      return 'String';
    case 'xs:int':
    case 'xs:long':
      return 'int';
    case 'xs:boolean':
      return 'bool';
    case 'xs:dateTime':
      return 'DateTime';
    case 'xs:float':
    case 'xs:double':
      return 'double';
    default:
      return toPascalCase(xmlType.replaceFirst('sub:', ''));
  }
}

String toPascalCase(String input) {
  final words = input.split(RegExp(r'[-_]|(?<=[a-z])(?=[A-Z])'));

  final pascalCase = words
      .map((word) => word.isNotEmpty
          ? word[0].toUpperCase() + word.substring(1).toLowerCase()
          : '')
      .join();

  return pascalCase;
}

String toCamelCase(String input) {
  final pascal = toPascalCase(input);
  return pascal[0].toLowerCase() + pascal.substring(1);
}

String toSnakeCase(String input) {
  // Insert underscores before uppercase letters and convert to lowercase
  final snakeCase = input
      .replaceAllMapped(RegExp(r'(?<=[a-z0-9])(?=[A-Z])'), (match) => '_')
      .toLowerCase();

  return snakeCase;
}

Future<void> generateApiDocsJson(File file, File output) async {
  final content = await file.readAsString();
  final document = parser.parse(content);

  // Find all section elements with class 'box'
  final sections = document.querySelectorAll('section.box');

  final List<Map<String, dynamic>> methods = [];

  for (var section in sections) {
    // Get the method name from h3
    final methodNameElement = section.querySelector('h3');
    if (methodNameElement == null) continue;

    final methodName = methodNameElement.text.trim();
    final comment = section
        .querySelectorAll('p')
        .map((e) => e.text
            .trim()
            .replaceAll('\n', ' ')
            .replaceAll('\t', ' ')
            .replaceAll(RegExp(r'\s+'), ' '))
        .join("\n");

    // Initialize method object
    final Map<String, dynamic> methodData = {
      'method': methodName,
      'comment': comment,
      'args': <String, Map<String, dynamic>>{},
      'response':
          ['getCoverArt', 'stream'].contains(methodName) ? 'string' : 'json',
    };

    // Find parameter table
    final table = section.querySelector('table');
    if (table != null) {
      // Process table rows
      final rows = table.querySelectorAll('tr');
      // Skip header row
      for (var i = 1; i < rows.length; i++) {
        final cells = rows[i].querySelectorAll('td');
        if (cells.length >= 4) {
          // Extract parameter information
          final paramName =
              cells[0].text.replaceAll(RegExp(r'[^\w]'), '').trim();
          final required = cells[1].text.trim().toLowerCase() == 'yes';
          final comment = cells[3]
              .text
              .trim()
              .replaceAll('\n', ' ')
              .replaceAll('\t', ' ')
              .replaceAll(RegExp(r'\s+'), ' ');
          final rawDefaultValue = cells[2].text.trim();
          final defaultValue = bool.tryParse(rawDefaultValue) ??
              num.tryParse(rawDefaultValue) ??
              (rawDefaultValue.isEmpty ? null : rawDefaultValue);

          methodData['args'][paramName] = {
            'required': required,
            'default': defaultValue,
          };
          methodData['comment'] =
              "${methodData['comment']}\n@param $paramName ${defaultValue == null ? '' : 'Default($defaultValue) '}$comment";
        }
      }
    }

    methods.add(methodData);
  }

  // Convert to JSON and save to file
  final jsonOutput = const JsonEncoder.withIndent('  ').convert(methods);
  await output.writeAsString(jsonOutput);
}

Future<void> generateProviders(File file, File output) async {
  // Read the JSON file
  final jsonString = await file.readAsString();
  final List<dynamic> apis = json.decode(jsonString);

  // Generate the Dart code
  final StringBuffer buffer = StringBuffer();

  // Write imports
  buffer.writeln('''
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:dururu/providers/auth.dart';
import 'package:dururu/providers/dio.dart';
import 'package:dururu/models/subsonic.dart';

part 'subsonic_apis.g.dart';
part 'subsonic_apis.freezed.dart';
''');

  // Process each API endpoint
  for (final api in apis) {
    final method = api['method'] as String;
    final comment = (api['comment'] as String).replaceAll('\n', '\n/// ');
    final args = api['args'] as Map<String, dynamic>;
    final response = api['response'];

    // Convert method name to camelCase
    final methodName = _toCamelCase(method);

    // Generate function parameters
    final queryParameters = _generateQueryParameters(args);

    final requestClassName = toPascalCase("${methodName}_Request");
    final requestClass = _generateRequestClass(args, requestClassName);
    final responseClassName =
        response == 'json' ? 'Future<Response>' : 'String';
    // Generate the API function
    buffer.writeln('''
$requestClass

/// $comment
@riverpod
$responseClassName $methodName(Ref ref${args.isNotEmpty ? ', $requestClassName request' : ''}) ${response.toString().startsWith('Future<') ? 'async ' : ''}{
  ${response == 'json' ? '''return ref.read(dioProvider).get(
    '\${ref.read(authProvider).value!.serverUrl}/rest/$method',
    queryParameters: {
      ...ref.read(authProvider.notifier).getAuthorization(),
      $queryParameters
    },
  ).then(
    (value) => Response.fromJson(value.data['subsonic-response'] as Map<String, dynamic>),
    );''' : '''final params = {
    ...ref.read(authProvider.notifier).getAuthorization(),
    $queryParameters
  };
  final url =
      '\${ref.read(authProvider).value!.serverUrl}/rest/$method?\${params.entries.map((entry) => '\${entry.key}=\${entry.value}').join('&')}';

  return Uri.encodeFull(url);
 '''}
}
''');
  }

  // Write the generated code to a file
  await output.writeAsString(buffer.toString());
}

String _toCamelCase(String input) {
  return input[0].toLowerCase() + input.substring(1);
}

String _generateRequestClass(Map<String, dynamic> args, requestClassName) {
  final params = <String>[];

  args.forEach((key, value) {
    if (value is Map<String, dynamic>) {
      const type = 'dynamic';
      final required = value['required'] as bool?;
      final defaultValue = value['default'] is String
          ? '"${value['default']}"'
          : value['default'];

      if (defaultValue != null) params.add('@Default($defaultValue)');
      params.add('   ${required ?? false ? ' required ' : ' '}$type $key,');
    }
  });
  if (params.isEmpty) return '';
  return '''
@freezed
class $requestClassName with _\$$requestClassName {
  const factory $requestClassName({
${params.join('\n')}
  }) = _$requestClassName;
}
''';
}

String _generateQueryParameters(Map<String, dynamic> args) {
  final params = <String>[];

  args.forEach((key, value) {
    if (value is Map<String, dynamic>) {
      final required = value['required'] as bool?;
      if (required == true) {
        params.add("'$key': request.$key");
      } else {
        params.add("if (request.$key != null) '$key': request.$key");
      }
    }
  });

  return params.join(',\n      ');
}
