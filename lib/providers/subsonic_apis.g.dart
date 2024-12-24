// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subsonic_apis.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$introductionHash() => r'fdadeef28bf1c32f0f496600cb6a3fedbf6c3dbe';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
/// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
/// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
/// Please note that all methods take the following parameters:
/// *) Either p or both t and s must be specified.
/// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
/// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
/// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
/// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
/// This involves two steps:
/// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
/// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
/// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
/// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
/// The following error codes are defined:
/// This table shows the REST API version implemented in different Subsonic versions:
/// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
/// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
/// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
/// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
/// @param u The username.
/// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
/// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
/// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
/// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
/// @param c A unique string identifying the client application.
/// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
///
/// Copied from [introduction].
@ProviderFor(introduction)
const introductionProvider = IntroductionFamily();

/// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
/// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
/// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
/// Please note that all methods take the following parameters:
/// *) Either p or both t and s must be specified.
/// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
/// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
/// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
/// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
/// This involves two steps:
/// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
/// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
/// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
/// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
/// The following error codes are defined:
/// This table shows the REST API version implemented in different Subsonic versions:
/// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
/// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
/// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
/// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
/// @param u The username.
/// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
/// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
/// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
/// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
/// @param c A unique string identifying the client application.
/// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
///
/// Copied from [introduction].
class IntroductionFamily extends Family<AsyncValue<Response>> {
  /// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
  /// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
  /// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
  /// Please note that all methods take the following parameters:
  /// *) Either p or both t and s must be specified.
  /// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
  /// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
  /// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
  /// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
  /// This involves two steps:
  /// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
  /// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
  /// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
  /// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
  /// The following error codes are defined:
  /// This table shows the REST API version implemented in different Subsonic versions:
  /// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
  /// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
  /// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
  /// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
  /// @param u The username.
  /// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
  /// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
  /// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
  /// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
  /// @param c A unique string identifying the client application.
  /// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
  ///
  /// Copied from [introduction].
  const IntroductionFamily();

  /// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
  /// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
  /// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
  /// Please note that all methods take the following parameters:
  /// *) Either p or both t and s must be specified.
  /// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
  /// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
  /// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
  /// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
  /// This involves two steps:
  /// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
  /// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
  /// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
  /// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
  /// The following error codes are defined:
  /// This table shows the REST API version implemented in different Subsonic versions:
  /// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
  /// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
  /// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
  /// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
  /// @param u The username.
  /// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
  /// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
  /// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
  /// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
  /// @param c A unique string identifying the client application.
  /// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
  ///
  /// Copied from [introduction].
  IntroductionProvider call(
    IntroductionRequest request,
  ) {
    return IntroductionProvider(
      request,
    );
  }

  @override
  IntroductionProvider getProviderOverride(
    covariant IntroductionProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'introductionProvider';
}

/// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
/// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
/// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
/// Please note that all methods take the following parameters:
/// *) Either p or both t and s must be specified.
/// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
/// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
/// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
/// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
/// This involves two steps:
/// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
/// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
/// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
/// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
/// The following error codes are defined:
/// This table shows the REST API version implemented in different Subsonic versions:
/// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
/// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
/// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
/// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
/// @param u The username.
/// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
/// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
/// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
/// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
/// @param c A unique string identifying the client application.
/// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
///
/// Copied from [introduction].
class IntroductionProvider extends AutoDisposeFutureProvider<Response> {
  /// The Subsonic API allows anyone to build their own programs using Subsonic as the media server, whether they're on the web, the desktop or on mobile devices. All the Subsonic apps are built using the Subsonic API.
  /// Feel free to join the Subsonic App Developers group for discussions, suggestions and questions.
  /// The Subsonic API allows you to call methods that respond in REST style xml. Individual methods are detailed below.
  /// Please note that all methods take the following parameters:
  /// *) Either p or both t and s must be specified.
  /// Remember to URL encode the request parameters. All methods (except those that return binary data) returns XML documents conforming to the subsonic-rest-api.xsd schema. The XML documents are encoded with UTF-8.
  /// If your targeting API version 1.12.0 or earlier, authentication is performed by sending the password as clear text or hex-encoded. Examples:
  /// http://your-server/rest/ping.view?u=joe&p=sesame&v=1.12.0&c=myapp http://your-server/rest/ping.view?u=joe&p=enc:736573616d65&v=1.12.0&c=myapp
  /// Starting with API version 1.13.0, the recommended authentication scheme is to send an authentication token, calculated as a one-way salted hash of the password.
  /// This involves two steps:
  /// For example: if the password is sesame and the random salt is c19b2d, then token = md5("sesamec19b2d") = 26719a1196d2a940705a59634eb18eab. The corresponding request URL then becomes:
  /// http://your-server/rest/ping.view?u=joe&t=26719a1196d2a940705a59634eb18eab&s=c19b2d&v=1.12.0&c=myapp
  /// If a method fails it will return an error code and message in an <error> element. In addition, the status attribute of the <subsonic-response> root element will be set to failed instead of ok. For example:
  /// <?xml version="1.0" encoding="UTF-8"?> <subsonic-response xmlns="http://subsonic.org/restapi" status="failed" version="1.1.0"> <error code="40" message="Wrong username or password"/> </subsonic-response>
  /// The following error codes are defined:
  /// This table shows the REST API version implemented in different Subsonic versions:
  /// Note that a Subsonic server is backward compatible with a REST client if and only if the major version is the same, and the minor version of the client is less than or equal to the server's. For example, if the server has REST API version 2.2, it supports client versions 2.0, 2.1 and 2.2, but not versions 1.x, 2.3+ or 3.x. The third part of the version number is not used to determine compatibility.
  /// Starting with version 1.8.0, the API provides methods for accessing the media collection organized according to ID3 tags, rather than file structure.
  /// For instance, browsing through the collection using ID3 tags should use the getArtists, getArtist and getAlbum methods. To browse using file structure you would use getIndexes and getMusicDirectory.
  /// Correspondingly, there are two sets of methods for searching, starring and album lists. Refer to the method documentation for details.
  /// @param u The username.
  /// @param p The password, either in clear text or hex-encoded with a "enc:" prefix. Since 1.13.0 this should only be used for testing purposes.
  /// @param t (Since 1.13.0) The authentication token computed as md5(password + salt). See below for details.
  /// @param s (Since 1.13.0) A random string ("salt") used as input for computing the password hash. See below for details.
  /// @param v The protocol version implemented by the client, i.e., the version of the subsonic-rest-api.xsd schema used (see below).
  /// @param c A unique string identifying the client application.
  /// @param f Default(xml) Request data to be returned in this format. Supported values are "xml", "json" (since 1.4.0) and "jsonp" (since 1.6.0). If using jsonp, specify name of javascript callback function using a callback parameter.
  ///
  /// Copied from [introduction].
  IntroductionProvider(
    IntroductionRequest request,
  ) : this._internal(
          (ref) => introduction(
            ref as IntroductionRef,
            request,
          ),
          from: introductionProvider,
          name: r'introductionProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$introductionHash,
          dependencies: IntroductionFamily._dependencies,
          allTransitiveDependencies:
              IntroductionFamily._allTransitiveDependencies,
          request: request,
        );

  IntroductionProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final IntroductionRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(IntroductionRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: IntroductionProvider._internal(
        (ref) => create(ref as IntroductionRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _IntroductionProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is IntroductionProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin IntroductionRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  IntroductionRequest get request;
}

class _IntroductionProviderElement
    extends AutoDisposeFutureProviderElement<Response> with IntroductionRef {
  _IntroductionProviderElement(super.provider);

  @override
  IntroductionRequest get request => (origin as IntroductionProvider).request;
}

String _$pingHash() => r'400bc7709f08f4228e2efaf4a157fca570dcc7e9';

/// http://your-server/rest/ping Since 1.0.0
/// Used to test connectivity with the server. Takes no extra parameters.
/// Returns an empty <subsonic-response> element on success. Example.
///
/// Copied from [ping].
@ProviderFor(ping)
final pingProvider = AutoDisposeFutureProvider<Response>.internal(
  ping,
  name: r'pingProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PingRef = AutoDisposeFutureProviderRef<Response>;
String _$getLicenseHash() => r'6671ecfda66d7da234be23b199c25a3f93b65ee0';

/// http://your-server/rest/getLicense Since 1.0.0
/// Get details about the software license. Takes no extra parameters. Please note that access to the REST API requires that the server has a valid license (after a 30-day trial period). To get a license key you must upgrade to Subsonic Premium.
/// Returns a <subsonic-response> element with a nested <license> element on success. Example.
///
/// Copied from [getLicense].
@ProviderFor(getLicense)
final getLicenseProvider = AutoDisposeFutureProvider<Response>.internal(
  getLicense,
  name: r'getLicenseProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getLicenseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetLicenseRef = AutoDisposeFutureProviderRef<Response>;
String _$getMusicFoldersHash() => r'c0e786c23eca0dd7e4a0ab7248fef168cafe08f8';

/// http://your-server/rest/getMusicFolders Since 1.0.0
/// Returns all configured top-level music folders. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <musicFolders> element on success. Example.
///
/// Copied from [getMusicFolders].
@ProviderFor(getMusicFolders)
final getMusicFoldersProvider = AutoDisposeFutureProvider<Response>.internal(
  getMusicFolders,
  name: r'getMusicFoldersProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getMusicFoldersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetMusicFoldersRef = AutoDisposeFutureProviderRef<Response>;
String _$getIndexesHash() => r'ea6233cd7b9b78aefb5cc13ed4f4c884813b0b78';

/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
///
/// Copied from [getIndexes].
@ProviderFor(getIndexes)
const getIndexesProvider = GetIndexesFamily();

/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
///
/// Copied from [getIndexes].
class GetIndexesFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getIndexes Since 1.0.0
  /// Returns an indexed structure of all artists.
  /// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  /// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
  ///
  /// Copied from [getIndexes].
  const GetIndexesFamily();

  /// http://your-server/rest/getIndexes Since 1.0.0
  /// Returns an indexed structure of all artists.
  /// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  /// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
  ///
  /// Copied from [getIndexes].
  GetIndexesProvider call(
    GetIndexesRequest request,
  ) {
    return GetIndexesProvider(
      request,
    );
  }

  @override
  GetIndexesProvider getProviderOverride(
    covariant GetIndexesProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getIndexesProvider';
}

/// http://your-server/rest/getIndexes Since 1.0.0
/// Returns an indexed structure of all artists.
/// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
/// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
///
/// Copied from [getIndexes].
class GetIndexesProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getIndexes Since 1.0.0
  /// Returns an indexed structure of all artists.
  /// Returns a <subsonic-response> element with a nested <indexes> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  /// @param ifModifiedSince If specified, only return a result if the artist collection has changed since the given time (in milliseconds since 1 Jan 1970).
  ///
  /// Copied from [getIndexes].
  GetIndexesProvider(
    GetIndexesRequest request,
  ) : this._internal(
          (ref) => getIndexes(
            ref as GetIndexesRef,
            request,
          ),
          from: getIndexesProvider,
          name: r'getIndexesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getIndexesHash,
          dependencies: GetIndexesFamily._dependencies,
          allTransitiveDependencies:
              GetIndexesFamily._allTransitiveDependencies,
          request: request,
        );

  GetIndexesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetIndexesRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetIndexesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetIndexesProvider._internal(
        (ref) => create(ref as GetIndexesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetIndexesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetIndexesProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetIndexesRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetIndexesRequest get request;
}

class _GetIndexesProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetIndexesRef {
  _GetIndexesProviderElement(super.provider);

  @override
  GetIndexesRequest get request => (origin as GetIndexesProvider).request;
}

String _$getMusicDirectoryHash() => r'a0e93bc58c3b85edf999ffbfac4be06139a90bf2';

/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
///
/// Copied from [getMusicDirectory].
@ProviderFor(getMusicDirectory)
const getMusicDirectoryProvider = GetMusicDirectoryFamily();

/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
///
/// Copied from [getMusicDirectory].
class GetMusicDirectoryFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getMusicDirectory Since 1.0.0
  /// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
  /// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
  /// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
  ///
  /// Copied from [getMusicDirectory].
  const GetMusicDirectoryFamily();

  /// http://your-server/rest/getMusicDirectory Since 1.0.0
  /// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
  /// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
  /// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
  ///
  /// Copied from [getMusicDirectory].
  GetMusicDirectoryProvider call(
    GetMusicDirectoryRequest request,
  ) {
    return GetMusicDirectoryProvider(
      request,
    );
  }

  @override
  GetMusicDirectoryProvider getProviderOverride(
    covariant GetMusicDirectoryProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getMusicDirectoryProvider';
}

/// http://your-server/rest/getMusicDirectory Since 1.0.0
/// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
/// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
/// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
///
/// Copied from [getMusicDirectory].
class GetMusicDirectoryProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getMusicDirectory Since 1.0.0
  /// Returns a listing of all files in a music directory. Typically used to get list of albums for an artist, or list of songs for an album.
  /// Returns a <subsonic-response> element with a nested <directory> element on success. Example 1. Example 2.
  /// @param id A string which uniquely identifies the music folder. Obtained by calls to getIndexes or getMusicDirectory.
  ///
  /// Copied from [getMusicDirectory].
  GetMusicDirectoryProvider(
    GetMusicDirectoryRequest request,
  ) : this._internal(
          (ref) => getMusicDirectory(
            ref as GetMusicDirectoryRef,
            request,
          ),
          from: getMusicDirectoryProvider,
          name: r'getMusicDirectoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getMusicDirectoryHash,
          dependencies: GetMusicDirectoryFamily._dependencies,
          allTransitiveDependencies:
              GetMusicDirectoryFamily._allTransitiveDependencies,
          request: request,
        );

  GetMusicDirectoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetMusicDirectoryRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetMusicDirectoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetMusicDirectoryProvider._internal(
        (ref) => create(ref as GetMusicDirectoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetMusicDirectoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetMusicDirectoryProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetMusicDirectoryRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetMusicDirectoryRequest get request;
}

class _GetMusicDirectoryProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with GetMusicDirectoryRef {
  _GetMusicDirectoryProviderElement(super.provider);

  @override
  GetMusicDirectoryRequest get request =>
      (origin as GetMusicDirectoryProvider).request;
}

String _$getGenresHash() => r'd4fa796ab66114507c7e832a703a311ea99f0fb8';

/// http://your-server/rest/getGenres Since 1.9.0
/// Returns all genres.
/// Returns a <subsonic-response> element with a nested <genres> element on success. Example.
///
/// Copied from [getGenres].
@ProviderFor(getGenres)
final getGenresProvider = AutoDisposeFutureProvider<Response>.internal(
  getGenres,
  name: r'getGenresProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getGenresHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetGenresRef = AutoDisposeFutureProviderRef<Response>;
String _$getArtistsHash() => r'370fc974a48bcda96e5b9bde8f3b07dd051e2f6a';

/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getArtists].
@ProviderFor(getArtists)
const getArtistsProvider = GetArtistsFamily();

/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getArtists].
class GetArtistsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtists Since 1.8.0
  /// Similar to getIndexes, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getArtists].
  const GetArtistsFamily();

  /// http://your-server/rest/getArtists Since 1.8.0
  /// Similar to getIndexes, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getArtists].
  GetArtistsProvider call(
    GetArtistsRequest request,
  ) {
    return GetArtistsProvider(
      request,
    );
  }

  @override
  GetArtistsProvider getProviderOverride(
    covariant GetArtistsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistsProvider';
}

/// http://your-server/rest/getArtists Since 1.8.0
/// Similar to getIndexes, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
/// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getArtists].
class GetArtistsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtists Since 1.8.0
  /// Similar to getIndexes, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artists> element on success. Example.
  /// @param musicFolderId If specified, only return artists in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getArtists].
  GetArtistsProvider(
    GetArtistsRequest request,
  ) : this._internal(
          (ref) => getArtists(
            ref as GetArtistsRef,
            request,
          ),
          from: getArtistsProvider,
          name: r'getArtistsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistsHash,
          dependencies: GetArtistsFamily._dependencies,
          allTransitiveDependencies:
              GetArtistsFamily._allTransitiveDependencies,
          request: request,
        );

  GetArtistsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetArtistsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistsProvider._internal(
        (ref) => create(ref as GetArtistsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetArtistsRequest get request;
}

class _GetArtistsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistsRef {
  _GetArtistsProviderElement(super.provider);

  @override
  GetArtistsRequest get request => (origin as GetArtistsProvider).request;
}

String _$getArtistHash() => r'a371957738fc718e993dd2ceeab8280ad4c2aa1a';

/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
///
/// Copied from [getArtist].
@ProviderFor(getArtist)
const getArtistProvider = GetArtistFamily();

/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
///
/// Copied from [getArtist].
class GetArtistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtist Since 1.8.0
  /// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
  /// @param id The artist ID.
  ///
  /// Copied from [getArtist].
  const GetArtistFamily();

  /// http://your-server/rest/getArtist Since 1.8.0
  /// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
  /// @param id The artist ID.
  ///
  /// Copied from [getArtist].
  GetArtistProvider call(
    GetArtistRequest request,
  ) {
    return GetArtistProvider(
      request,
    );
  }

  @override
  GetArtistProvider getProviderOverride(
    covariant GetArtistProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistProvider';
}

/// http://your-server/rest/getArtist Since 1.8.0
/// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
/// @param id The artist ID.
///
/// Copied from [getArtist].
class GetArtistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtist Since 1.8.0
  /// Returns details for an artist, including a list of albums. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artist> element on success. Example.
  /// @param id The artist ID.
  ///
  /// Copied from [getArtist].
  GetArtistProvider(
    GetArtistRequest request,
  ) : this._internal(
          (ref) => getArtist(
            ref as GetArtistRef,
            request,
          ),
          from: getArtistProvider,
          name: r'getArtistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistHash,
          dependencies: GetArtistFamily._dependencies,
          allTransitiveDependencies: GetArtistFamily._allTransitiveDependencies,
          request: request,
        );

  GetArtistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetArtistRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistProvider._internal(
        (ref) => create(ref as GetArtistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetArtistRequest get request;
}

class _GetArtistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistRef {
  _GetArtistProviderElement(super.provider);

  @override
  GetArtistRequest get request => (origin as GetArtistProvider).request;
}

String _$getAlbumHash() => r'dc038f179093e0f48cc04dead8fe5174645e7d10';

/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbum].
@ProviderFor(getAlbum)
const getAlbumProvider = GetAlbumFamily();

/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbum].
class GetAlbumFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbum Since 1.8.0
  /// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <album> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbum].
  const GetAlbumFamily();

  /// http://your-server/rest/getAlbum Since 1.8.0
  /// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <album> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbum].
  GetAlbumProvider call(
    GetAlbumRequest request,
  ) {
    return GetAlbumProvider(
      request,
    );
  }

  @override
  GetAlbumProvider getProviderOverride(
    covariant GetAlbumProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumProvider';
}

/// http://your-server/rest/getAlbum Since 1.8.0
/// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <album> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbum].
class GetAlbumProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbum Since 1.8.0
  /// Returns details for an album, including a list of songs. This method organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <album> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbum].
  GetAlbumProvider(
    GetAlbumRequest request,
  ) : this._internal(
          (ref) => getAlbum(
            ref as GetAlbumRef,
            request,
          ),
          from: getAlbumProvider,
          name: r'getAlbumProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumHash,
          dependencies: GetAlbumFamily._dependencies,
          allTransitiveDependencies: GetAlbumFamily._allTransitiveDependencies,
          request: request,
        );

  GetAlbumProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetAlbumRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumProvider._internal(
        (ref) => create(ref as GetAlbumRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetAlbumRequest get request;
}

class _GetAlbumProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumRef {
  _GetAlbumProviderElement(super.provider);

  @override
  GetAlbumRequest get request => (origin as GetAlbumProvider).request;
}

String _$getSongHash() => r'bdb2192b867f36a6a878e2108ee3ff3b7e78d93b';

/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
///
/// Copied from [getSong].
@ProviderFor(getSong)
const getSongProvider = GetSongFamily();

/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
///
/// Copied from [getSong].
class GetSongFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSong Since 1.8.0
  /// Returns details for a song.
  /// Returns a <subsonic-response> element with a nested <song> element on success. Example.
  /// @param id The song ID.
  ///
  /// Copied from [getSong].
  const GetSongFamily();

  /// http://your-server/rest/getSong Since 1.8.0
  /// Returns details for a song.
  /// Returns a <subsonic-response> element with a nested <song> element on success. Example.
  /// @param id The song ID.
  ///
  /// Copied from [getSong].
  GetSongProvider call(
    GetSongRequest request,
  ) {
    return GetSongProvider(
      request,
    );
  }

  @override
  GetSongProvider getProviderOverride(
    covariant GetSongProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSongProvider';
}

/// http://your-server/rest/getSong Since 1.8.0
/// Returns details for a song.
/// Returns a <subsonic-response> element with a nested <song> element on success. Example.
/// @param id The song ID.
///
/// Copied from [getSong].
class GetSongProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSong Since 1.8.0
  /// Returns details for a song.
  /// Returns a <subsonic-response> element with a nested <song> element on success. Example.
  /// @param id The song ID.
  ///
  /// Copied from [getSong].
  GetSongProvider(
    GetSongRequest request,
  ) : this._internal(
          (ref) => getSong(
            ref as GetSongRef,
            request,
          ),
          from: getSongProvider,
          name: r'getSongProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSongHash,
          dependencies: GetSongFamily._dependencies,
          allTransitiveDependencies: GetSongFamily._allTransitiveDependencies,
          request: request,
        );

  GetSongProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetSongRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSongRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSongProvider._internal(
        (ref) => create(ref as GetSongRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSongProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSongProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSongRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetSongRequest get request;
}

class _GetSongProviderElement extends AutoDisposeFutureProviderElement<Response>
    with GetSongRef {
  _GetSongProviderElement(super.provider);

  @override
  GetSongRequest get request => (origin as GetSongProvider).request;
}

String _$getVideosHash() => r'c03091c0125be801db07f65377cbde4ae0e27ed4';

/// http://your-server/rest/getVideos Since 1.8.0
/// Returns all video files.
/// Returns a <subsonic-response> element with a nested <videos> element on success. Example.
///
/// Copied from [getVideos].
@ProviderFor(getVideos)
final getVideosProvider = AutoDisposeFutureProvider<Response>.internal(
  getVideos,
  name: r'getVideosProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getVideosHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetVideosRef = AutoDisposeFutureProviderRef<Response>;
String _$getVideoInfoHash() => r'65c91120bd89df8123b58c8ccf85176b6778a133';

/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
///
/// Copied from [getVideoInfo].
@ProviderFor(getVideoInfo)
const getVideoInfoProvider = GetVideoInfoFamily();

/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
///
/// Copied from [getVideoInfo].
class GetVideoInfoFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getVideoInfo Since 1.14.0
  /// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
  /// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
  /// @param id The video ID.
  ///
  /// Copied from [getVideoInfo].
  const GetVideoInfoFamily();

  /// http://your-server/rest/getVideoInfo Since 1.14.0
  /// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
  /// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
  /// @param id The video ID.
  ///
  /// Copied from [getVideoInfo].
  GetVideoInfoProvider call(
    GetVideoInfoRequest request,
  ) {
    return GetVideoInfoProvider(
      request,
    );
  }

  @override
  GetVideoInfoProvider getProviderOverride(
    covariant GetVideoInfoProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getVideoInfoProvider';
}

/// http://your-server/rest/getVideoInfo Since 1.14.0
/// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
/// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
/// @param id The video ID.
///
/// Copied from [getVideoInfo].
class GetVideoInfoProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getVideoInfo Since 1.14.0
  /// Returns details for a video, including information about available audio tracks, subtitles (captions) and conversions.
  /// Returns a <subsonic-response> element with a nested <videoInfo> element on success. Example.
  /// @param id The video ID.
  ///
  /// Copied from [getVideoInfo].
  GetVideoInfoProvider(
    GetVideoInfoRequest request,
  ) : this._internal(
          (ref) => getVideoInfo(
            ref as GetVideoInfoRef,
            request,
          ),
          from: getVideoInfoProvider,
          name: r'getVideoInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getVideoInfoHash,
          dependencies: GetVideoInfoFamily._dependencies,
          allTransitiveDependencies:
              GetVideoInfoFamily._allTransitiveDependencies,
          request: request,
        );

  GetVideoInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetVideoInfoRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetVideoInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetVideoInfoProvider._internal(
        (ref) => create(ref as GetVideoInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetVideoInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetVideoInfoProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetVideoInfoRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetVideoInfoRequest get request;
}

class _GetVideoInfoProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetVideoInfoRef {
  _GetVideoInfoProviderElement(super.provider);

  @override
  GetVideoInfoRequest get request => (origin as GetVideoInfoProvider).request;
}

String _$getArtistInfoHash() => r'22ef8a83ae9b966e92c5a9faf85fec138697b1d7';

/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo].
@ProviderFor(getArtistInfo)
const getArtistInfoProvider = GetArtistInfoFamily();

/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo].
class GetArtistInfoFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtistInfo Since 1.11.0
  /// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo].
  const GetArtistInfoFamily();

  /// http://your-server/rest/getArtistInfo Since 1.11.0
  /// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo].
  GetArtistInfoProvider call(
    GetArtistInfoRequest request,
  ) {
    return GetArtistInfoProvider(
      request,
    );
  }

  @override
  GetArtistInfoProvider getProviderOverride(
    covariant GetArtistInfoProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistInfoProvider';
}

/// http://your-server/rest/getArtistInfo Since 1.11.0
/// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo].
class GetArtistInfoProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtistInfo Since 1.11.0
  /// Returns artist info with biography, image URLs and similar artists, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <artistInfo> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo].
  GetArtistInfoProvider(
    GetArtistInfoRequest request,
  ) : this._internal(
          (ref) => getArtistInfo(
            ref as GetArtistInfoRef,
            request,
          ),
          from: getArtistInfoProvider,
          name: r'getArtistInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistInfoHash,
          dependencies: GetArtistInfoFamily._dependencies,
          allTransitiveDependencies:
              GetArtistInfoFamily._allTransitiveDependencies,
          request: request,
        );

  GetArtistInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetArtistInfoRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistInfoProvider._internal(
        (ref) => create(ref as GetArtistInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistInfoProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistInfoRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetArtistInfoRequest get request;
}

class _GetArtistInfoProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistInfoRef {
  _GetArtistInfoProviderElement(super.provider);

  @override
  GetArtistInfoRequest get request => (origin as GetArtistInfoProvider).request;
}

String _$getArtistInfo2Hash() => r'b65d480d0e765743801d1102721c39506402e744';

/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo2].
@ProviderFor(getArtistInfo2)
const getArtistInfo2Provider = GetArtistInfo2Family();

/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo2].
class GetArtistInfo2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getArtistInfo2 Since 1.11.0
  /// Similar to getArtistInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo2].
  const GetArtistInfo2Family();

  /// http://your-server/rest/getArtistInfo2 Since 1.11.0
  /// Similar to getArtistInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo2].
  GetArtistInfo2Provider call(
    GetArtistInfo2Request request,
  ) {
    return GetArtistInfo2Provider(
      request,
    );
  }

  @override
  GetArtistInfo2Provider getProviderOverride(
    covariant GetArtistInfo2Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getArtistInfo2Provider';
}

/// http://your-server/rest/getArtistInfo2 Since 1.11.0
/// Similar to getArtistInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(20) Max number of similar artists to return.
/// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
///
/// Copied from [getArtistInfo2].
class GetArtistInfo2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getArtistInfo2 Since 1.11.0
  /// Similar to getArtistInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <artistInfo2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(20) Max number of similar artists to return.
  /// @param includeNotPresent Default(false) Whether to return artists that are not present in the media library.
  ///
  /// Copied from [getArtistInfo2].
  GetArtistInfo2Provider(
    GetArtistInfo2Request request,
  ) : this._internal(
          (ref) => getArtistInfo2(
            ref as GetArtistInfo2Ref,
            request,
          ),
          from: getArtistInfo2Provider,
          name: r'getArtistInfo2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getArtistInfo2Hash,
          dependencies: GetArtistInfo2Family._dependencies,
          allTransitiveDependencies:
              GetArtistInfo2Family._allTransitiveDependencies,
          request: request,
        );

  GetArtistInfo2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetArtistInfo2Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetArtistInfo2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetArtistInfo2Provider._internal(
        (ref) => create(ref as GetArtistInfo2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetArtistInfo2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArtistInfo2Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetArtistInfo2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetArtistInfo2Request get request;
}

class _GetArtistInfo2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetArtistInfo2Ref {
  _GetArtistInfo2ProviderElement(super.provider);

  @override
  GetArtistInfo2Request get request =>
      (origin as GetArtistInfo2Provider).request;
}

String _$getAlbumInfoHash() => r'78fb6b6dcfeff23638215ffeaffb37e5bef129e2';

/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
///
/// Copied from [getAlbumInfo].
@ProviderFor(getAlbumInfo)
const getAlbumInfoProvider = GetAlbumInfoFamily();

/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
///
/// Copied from [getAlbumInfo].
class GetAlbumInfoFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbumInfo Since 1.14.0
  /// Returns album notes, image URLs etc, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album or song ID.
  ///
  /// Copied from [getAlbumInfo].
  const GetAlbumInfoFamily();

  /// http://your-server/rest/getAlbumInfo Since 1.14.0
  /// Returns album notes, image URLs etc, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album or song ID.
  ///
  /// Copied from [getAlbumInfo].
  GetAlbumInfoProvider call(
    GetAlbumInfoRequest request,
  ) {
    return GetAlbumInfoProvider(
      request,
    );
  }

  @override
  GetAlbumInfoProvider getProviderOverride(
    covariant GetAlbumInfoProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumInfoProvider';
}

/// http://your-server/rest/getAlbumInfo Since 1.14.0
/// Returns album notes, image URLs etc, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album or song ID.
///
/// Copied from [getAlbumInfo].
class GetAlbumInfoProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbumInfo Since 1.14.0
  /// Returns album notes, image URLs etc, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album or song ID.
  ///
  /// Copied from [getAlbumInfo].
  GetAlbumInfoProvider(
    GetAlbumInfoRequest request,
  ) : this._internal(
          (ref) => getAlbumInfo(
            ref as GetAlbumInfoRef,
            request,
          ),
          from: getAlbumInfoProvider,
          name: r'getAlbumInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumInfoHash,
          dependencies: GetAlbumInfoFamily._dependencies,
          allTransitiveDependencies:
              GetAlbumInfoFamily._allTransitiveDependencies,
          request: request,
        );

  GetAlbumInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetAlbumInfoRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumInfoProvider._internal(
        (ref) => create(ref as GetAlbumInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumInfoProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumInfoRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetAlbumInfoRequest get request;
}

class _GetAlbumInfoProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumInfoRef {
  _GetAlbumInfoProviderElement(super.provider);

  @override
  GetAlbumInfoRequest get request => (origin as GetAlbumInfoProvider).request;
}

String _$getAlbumInfo2Hash() => r'00523aa6c0a6b13b2cd62b964e029a5b3af5d3b2';

/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbumInfo2].
@ProviderFor(getAlbumInfo2)
const getAlbumInfo2Provider = GetAlbumInfo2Family();

/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbumInfo2].
class GetAlbumInfo2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbumInfo2 Since 1.14.0
  /// Similar to getAlbumInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbumInfo2].
  const GetAlbumInfo2Family();

  /// http://your-server/rest/getAlbumInfo2 Since 1.14.0
  /// Similar to getAlbumInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbumInfo2].
  GetAlbumInfo2Provider call(
    GetAlbumInfo2Request request,
  ) {
    return GetAlbumInfo2Provider(
      request,
    );
  }

  @override
  GetAlbumInfo2Provider getProviderOverride(
    covariant GetAlbumInfo2Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumInfo2Provider';
}

/// http://your-server/rest/getAlbumInfo2 Since 1.14.0
/// Similar to getAlbumInfo, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
/// @param id The album ID.
///
/// Copied from [getAlbumInfo2].
class GetAlbumInfo2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbumInfo2 Since 1.14.0
  /// Similar to getAlbumInfo, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumInfo> element on success. Example.
  /// @param id The album ID.
  ///
  /// Copied from [getAlbumInfo2].
  GetAlbumInfo2Provider(
    GetAlbumInfo2Request request,
  ) : this._internal(
          (ref) => getAlbumInfo2(
            ref as GetAlbumInfo2Ref,
            request,
          ),
          from: getAlbumInfo2Provider,
          name: r'getAlbumInfo2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumInfo2Hash,
          dependencies: GetAlbumInfo2Family._dependencies,
          allTransitiveDependencies:
              GetAlbumInfo2Family._allTransitiveDependencies,
          request: request,
        );

  GetAlbumInfo2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetAlbumInfo2Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumInfo2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumInfo2Provider._internal(
        (ref) => create(ref as GetAlbumInfo2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumInfo2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumInfo2Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumInfo2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetAlbumInfo2Request get request;
}

class _GetAlbumInfo2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumInfo2Ref {
  _GetAlbumInfo2ProviderElement(super.provider);

  @override
  GetAlbumInfo2Request get request => (origin as GetAlbumInfo2Provider).request;
}

String _$getSimilarSongsHash() => r'ee810f723b627ac78231c450d265b08244aa1d67';

/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs].
@ProviderFor(getSimilarSongs)
const getSimilarSongsProvider = GetSimilarSongsFamily();

/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs].
class GetSimilarSongsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSimilarSongs Since 1.11.0
  /// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
  /// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs].
  const GetSimilarSongsFamily();

  /// http://your-server/rest/getSimilarSongs Since 1.11.0
  /// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
  /// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs].
  GetSimilarSongsProvider call(
    GetSimilarSongsRequest request,
  ) {
    return GetSimilarSongsProvider(
      request,
    );
  }

  @override
  GetSimilarSongsProvider getProviderOverride(
    covariant GetSimilarSongsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSimilarSongsProvider';
}

/// http://your-server/rest/getSimilarSongs Since 1.11.0
/// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
/// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
/// @param id The artist, album or song ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs].
class GetSimilarSongsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSimilarSongs Since 1.11.0
  /// Returns a random collection of songs from the given artist and similar artists, using data from last.fm. Typically used for artist radio features.
  /// Returns a <subsonic-response> element with a nested <similarSongs> element on success. Example.
  /// @param id The artist, album or song ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs].
  GetSimilarSongsProvider(
    GetSimilarSongsRequest request,
  ) : this._internal(
          (ref) => getSimilarSongs(
            ref as GetSimilarSongsRef,
            request,
          ),
          from: getSimilarSongsProvider,
          name: r'getSimilarSongsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSimilarSongsHash,
          dependencies: GetSimilarSongsFamily._dependencies,
          allTransitiveDependencies:
              GetSimilarSongsFamily._allTransitiveDependencies,
          request: request,
        );

  GetSimilarSongsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetSimilarSongsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSimilarSongsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSimilarSongsProvider._internal(
        (ref) => create(ref as GetSimilarSongsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSimilarSongsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSimilarSongsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSimilarSongsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetSimilarSongsRequest get request;
}

class _GetSimilarSongsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetSimilarSongsRef {
  _GetSimilarSongsProviderElement(super.provider);

  @override
  GetSimilarSongsRequest get request =>
      (origin as GetSimilarSongsProvider).request;
}

String _$getSimilarSongs2Hash() => r'e2f93153d24cc78e9c62abfc4ea524ee41dfeadf';

/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs2].
@ProviderFor(getSimilarSongs2)
const getSimilarSongs2Provider = GetSimilarSongs2Family();

/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs2].
class GetSimilarSongs2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSimilarSongs2 Since 1.11.0
  /// Similar to getSimilarSongs, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs2].
  const GetSimilarSongs2Family();

  /// http://your-server/rest/getSimilarSongs2 Since 1.11.0
  /// Similar to getSimilarSongs, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs2].
  GetSimilarSongs2Provider call(
    GetSimilarSongs2Request request,
  ) {
    return GetSimilarSongs2Provider(
      request,
    );
  }

  @override
  GetSimilarSongs2Provider getProviderOverride(
    covariant GetSimilarSongs2Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSimilarSongs2Provider';
}

/// http://your-server/rest/getSimilarSongs2 Since 1.11.0
/// Similar to getSimilarSongs, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
/// @param id The artist ID.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getSimilarSongs2].
class GetSimilarSongs2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSimilarSongs2 Since 1.11.0
  /// Similar to getSimilarSongs, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <similarSongs2> element on success. Example.
  /// @param id The artist ID.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getSimilarSongs2].
  GetSimilarSongs2Provider(
    GetSimilarSongs2Request request,
  ) : this._internal(
          (ref) => getSimilarSongs2(
            ref as GetSimilarSongs2Ref,
            request,
          ),
          from: getSimilarSongs2Provider,
          name: r'getSimilarSongs2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSimilarSongs2Hash,
          dependencies: GetSimilarSongs2Family._dependencies,
          allTransitiveDependencies:
              GetSimilarSongs2Family._allTransitiveDependencies,
          request: request,
        );

  GetSimilarSongs2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetSimilarSongs2Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSimilarSongs2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSimilarSongs2Provider._internal(
        (ref) => create(ref as GetSimilarSongs2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSimilarSongs2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSimilarSongs2Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSimilarSongs2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetSimilarSongs2Request get request;
}

class _GetSimilarSongs2ProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with GetSimilarSongs2Ref {
  _GetSimilarSongs2ProviderElement(super.provider);

  @override
  GetSimilarSongs2Request get request =>
      (origin as GetSimilarSongs2Provider).request;
}

String _$getTopSongsHash() => r'86e8f42a0d362a68e386193f079fc482b39887aa';

/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getTopSongs].
@ProviderFor(getTopSongs)
const getTopSongsProvider = GetTopSongsFamily();

/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getTopSongs].
class GetTopSongsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getTopSongs Since 1.13.0
  /// Returns top songs for the given artist, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
  /// @param artist The artist name.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getTopSongs].
  const GetTopSongsFamily();

  /// http://your-server/rest/getTopSongs Since 1.13.0
  /// Returns top songs for the given artist, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
  /// @param artist The artist name.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getTopSongs].
  GetTopSongsProvider call(
    GetTopSongsRequest request,
  ) {
    return GetTopSongsProvider(
      request,
    );
  }

  @override
  GetTopSongsProvider getProviderOverride(
    covariant GetTopSongsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getTopSongsProvider';
}

/// http://your-server/rest/getTopSongs Since 1.13.0
/// Returns top songs for the given artist, using data from last.fm.
/// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
/// @param artist The artist name.
/// @param count Default(50) Max number of songs to return.
///
/// Copied from [getTopSongs].
class GetTopSongsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getTopSongs Since 1.13.0
  /// Returns top songs for the given artist, using data from last.fm.
  /// Returns a <subsonic-response> element with a nested <topSongs> element on success. Example.
  /// @param artist The artist name.
  /// @param count Default(50) Max number of songs to return.
  ///
  /// Copied from [getTopSongs].
  GetTopSongsProvider(
    GetTopSongsRequest request,
  ) : this._internal(
          (ref) => getTopSongs(
            ref as GetTopSongsRef,
            request,
          ),
          from: getTopSongsProvider,
          name: r'getTopSongsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTopSongsHash,
          dependencies: GetTopSongsFamily._dependencies,
          allTransitiveDependencies:
              GetTopSongsFamily._allTransitiveDependencies,
          request: request,
        );

  GetTopSongsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetTopSongsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetTopSongsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTopSongsProvider._internal(
        (ref) => create(ref as GetTopSongsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetTopSongsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTopSongsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetTopSongsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetTopSongsRequest get request;
}

class _GetTopSongsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetTopSongsRef {
  _GetTopSongsProviderElement(super.provider);

  @override
  GetTopSongsRequest get request => (origin as GetTopSongsProvider).request;
}

String _$getAlbumListHash() => r'1199fd8cdd55ab39a4eb6456ea263b79cb0e47fb';

/// http://your-server/rest/getAlbumList Since 1.2.0
/// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
/// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getAlbumList].
@ProviderFor(getAlbumList)
const getAlbumListProvider = GetAlbumListFamily();

/// http://your-server/rest/getAlbumList Since 1.2.0
/// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
/// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getAlbumList].
class GetAlbumListFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbumList Since 1.2.0
  /// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
  /// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
  /// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
  /// @param size Default(10) The number of albums to return. Max 500.
  /// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
  /// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
  /// @param toYear The last year in the range.
  /// @param genre The name of the genre, e.g., "Rock".
  /// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getAlbumList].
  const GetAlbumListFamily();

  /// http://your-server/rest/getAlbumList Since 1.2.0
  /// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
  /// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
  /// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
  /// @param size Default(10) The number of albums to return. Max 500.
  /// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
  /// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
  /// @param toYear The last year in the range.
  /// @param genre The name of the genre, e.g., "Rock".
  /// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getAlbumList].
  GetAlbumListProvider call(
    GetAlbumListRequest request,
  ) {
    return GetAlbumListProvider(
      request,
    );
  }

  @override
  GetAlbumListProvider getProviderOverride(
    covariant GetAlbumListProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumListProvider';
}

/// http://your-server/rest/getAlbumList Since 1.2.0
/// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
/// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getAlbumList].
class GetAlbumListProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbumList Since 1.2.0
  /// Returns a list of random, newest, highest rated etc. albums. Similar to the album lists on the home page of the Subsonic web interface.
  /// Returns a <subsonic-response> element with a nested <albumList> element on success. Example.
  /// @param type The list type. Must be one of the following: random, newest, highest, frequent, recent. Since 1.8.0 you can also use alphabeticalByName or alphabeticalByArtist to page through all albums alphabetically, and starred to retrieve starred albums. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
  /// @param size Default(10) The number of albums to return. Max 500.
  /// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
  /// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
  /// @param toYear The last year in the range.
  /// @param genre The name of the genre, e.g., "Rock".
  /// @param musicFolderId (Since 1.11.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getAlbumList].
  GetAlbumListProvider(
    GetAlbumListRequest request,
  ) : this._internal(
          (ref) => getAlbumList(
            ref as GetAlbumListRef,
            request,
          ),
          from: getAlbumListProvider,
          name: r'getAlbumListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumListHash,
          dependencies: GetAlbumListFamily._dependencies,
          allTransitiveDependencies:
              GetAlbumListFamily._allTransitiveDependencies,
          request: request,
        );

  GetAlbumListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetAlbumListRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumListProvider._internal(
        (ref) => create(ref as GetAlbumListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumListProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumListRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetAlbumListRequest get request;
}

class _GetAlbumListProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumListRef {
  _GetAlbumListProviderElement(super.provider);

  @override
  GetAlbumListRequest get request => (origin as GetAlbumListProvider).request;
}

String _$getAlbumList2Hash() => r'ea8b397c1976b10b26a121444368f44db5954281';

/// http://your-server/rest/getAlbumList2 Since 1.8.0
/// Similar to getAlbumList, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getAlbumList2].
@ProviderFor(getAlbumList2)
const getAlbumList2Provider = GetAlbumList2Family();

/// http://your-server/rest/getAlbumList2 Since 1.8.0
/// Similar to getAlbumList, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getAlbumList2].
class GetAlbumList2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAlbumList2 Since 1.8.0
  /// Similar to getAlbumList, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
  /// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
  /// @param size Default(10) The number of albums to return. Max 500.
  /// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
  /// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
  /// @param toYear The last year in the range.
  /// @param genre The name of the genre, e.g., "Rock".
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getAlbumList2].
  const GetAlbumList2Family();

  /// http://your-server/rest/getAlbumList2 Since 1.8.0
  /// Similar to getAlbumList, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
  /// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
  /// @param size Default(10) The number of albums to return. Max 500.
  /// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
  /// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
  /// @param toYear The last year in the range.
  /// @param genre The name of the genre, e.g., "Rock".
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getAlbumList2].
  GetAlbumList2Provider call(
    GetAlbumList2Request request,
  ) {
    return GetAlbumList2Provider(
      request,
    );
  }

  @override
  GetAlbumList2Provider getProviderOverride(
    covariant GetAlbumList2Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAlbumList2Provider';
}

/// http://your-server/rest/getAlbumList2 Since 1.8.0
/// Similar to getAlbumList, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
/// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
/// @param size Default(10) The number of albums to return. Max 500.
/// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
/// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
/// @param toYear The last year in the range.
/// @param genre The name of the genre, e.g., "Rock".
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getAlbumList2].
class GetAlbumList2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAlbumList2 Since 1.8.0
  /// Similar to getAlbumList, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <albumList2> element on success. Example.
  /// @param type The list type. Must be one of the following: random, newest, frequent, recent, starred, alphabeticalByName or alphabeticalByArtist. Since 1.10.1 you can use byYear and byGenre to list albums in a given year range or genre.
  /// @param size Default(10) The number of albums to return. Max 500.
  /// @param offset Default(0) The list offset. Useful if you for example want to page through the list of newest albums.
  /// @param fromYear The first year in the range. If fromYear > toYear a reverse chronological list is returned.
  /// @param toYear The last year in the range.
  /// @param genre The name of the genre, e.g., "Rock".
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getAlbumList2].
  GetAlbumList2Provider(
    GetAlbumList2Request request,
  ) : this._internal(
          (ref) => getAlbumList2(
            ref as GetAlbumList2Ref,
            request,
          ),
          from: getAlbumList2Provider,
          name: r'getAlbumList2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAlbumList2Hash,
          dependencies: GetAlbumList2Family._dependencies,
          allTransitiveDependencies:
              GetAlbumList2Family._allTransitiveDependencies,
          request: request,
        );

  GetAlbumList2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetAlbumList2Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAlbumList2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAlbumList2Provider._internal(
        (ref) => create(ref as GetAlbumList2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAlbumList2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAlbumList2Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAlbumList2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetAlbumList2Request get request;
}

class _GetAlbumList2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAlbumList2Ref {
  _GetAlbumList2ProviderElement(super.provider);

  @override
  GetAlbumList2Request get request => (origin as GetAlbumList2Provider).request;
}

String _$getRandomSongsHash() => r'189bd04b2bac9605d9d8f0088558baa1d0652f62';

/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getRandomSongs].
@ProviderFor(getRandomSongs)
const getRandomSongsProvider = GetRandomSongsFamily();

/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getRandomSongs].
class GetRandomSongsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getRandomSongs Since 1.2.0
  /// Returns random songs matching the given criteria.
  /// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
  /// @param size Default(10) The maximum number of songs to return. Max 500.
  /// @param genre Only returns songs belonging to this genre.
  /// @param fromYear Only return songs published after or in this year.
  /// @param toYear Only return songs published before or in this year.
  /// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getRandomSongs].
  const GetRandomSongsFamily();

  /// http://your-server/rest/getRandomSongs Since 1.2.0
  /// Returns random songs matching the given criteria.
  /// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
  /// @param size Default(10) The maximum number of songs to return. Max 500.
  /// @param genre Only returns songs belonging to this genre.
  /// @param fromYear Only return songs published after or in this year.
  /// @param toYear Only return songs published before or in this year.
  /// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getRandomSongs].
  GetRandomSongsProvider call(
    GetRandomSongsRequest request,
  ) {
    return GetRandomSongsProvider(
      request,
    );
  }

  @override
  GetRandomSongsProvider getProviderOverride(
    covariant GetRandomSongsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getRandomSongsProvider';
}

/// http://your-server/rest/getRandomSongs Since 1.2.0
/// Returns random songs matching the given criteria.
/// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
/// @param size Default(10) The maximum number of songs to return. Max 500.
/// @param genre Only returns songs belonging to this genre.
/// @param fromYear Only return songs published after or in this year.
/// @param toYear Only return songs published before or in this year.
/// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getRandomSongs].
class GetRandomSongsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getRandomSongs Since 1.2.0
  /// Returns random songs matching the given criteria.
  /// Returns a <subsonic-response> element with a nested <randomSongs> element on success. Example.
  /// @param size Default(10) The maximum number of songs to return. Max 500.
  /// @param genre Only returns songs belonging to this genre.
  /// @param fromYear Only return songs published after or in this year.
  /// @param toYear Only return songs published before or in this year.
  /// @param musicFolderId Only return songs in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getRandomSongs].
  GetRandomSongsProvider(
    GetRandomSongsRequest request,
  ) : this._internal(
          (ref) => getRandomSongs(
            ref as GetRandomSongsRef,
            request,
          ),
          from: getRandomSongsProvider,
          name: r'getRandomSongsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getRandomSongsHash,
          dependencies: GetRandomSongsFamily._dependencies,
          allTransitiveDependencies:
              GetRandomSongsFamily._allTransitiveDependencies,
          request: request,
        );

  GetRandomSongsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetRandomSongsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetRandomSongsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetRandomSongsProvider._internal(
        (ref) => create(ref as GetRandomSongsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetRandomSongsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetRandomSongsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetRandomSongsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetRandomSongsRequest get request;
}

class _GetRandomSongsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetRandomSongsRef {
  _GetRandomSongsProviderElement(super.provider);

  @override
  GetRandomSongsRequest get request =>
      (origin as GetRandomSongsProvider).request;
}

String _$getSongsByGenreHash() => r'2f4c6e8067a1072fb958c45b3ad5a188fe0bba1b';

/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getSongsByGenre].
@ProviderFor(getSongsByGenre)
const getSongsByGenreProvider = GetSongsByGenreFamily();

/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getSongsByGenre].
class GetSongsByGenreFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getSongsByGenre Since 1.9.0
  /// Returns songs in a given genre.
  /// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
  /// @param genre The genre, as returned by getGenres.
  /// @param count Default(10) The maximum number of songs to return. Max 500.
  /// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getSongsByGenre].
  const GetSongsByGenreFamily();

  /// http://your-server/rest/getSongsByGenre Since 1.9.0
  /// Returns songs in a given genre.
  /// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
  /// @param genre The genre, as returned by getGenres.
  /// @param count Default(10) The maximum number of songs to return. Max 500.
  /// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getSongsByGenre].
  GetSongsByGenreProvider call(
    GetSongsByGenreRequest request,
  ) {
    return GetSongsByGenreProvider(
      request,
    );
  }

  @override
  GetSongsByGenreProvider getProviderOverride(
    covariant GetSongsByGenreProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSongsByGenreProvider';
}

/// http://your-server/rest/getSongsByGenre Since 1.9.0
/// Returns songs in a given genre.
/// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
/// @param genre The genre, as returned by getGenres.
/// @param count Default(10) The maximum number of songs to return. Max 500.
/// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
/// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getSongsByGenre].
class GetSongsByGenreProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getSongsByGenre Since 1.9.0
  /// Returns songs in a given genre.
  /// Returns a <subsonic-response> element with a nested <songsByGenre> element on success. Example.
  /// @param genre The genre, as returned by getGenres.
  /// @param count Default(10) The maximum number of songs to return. Max 500.
  /// @param offset Default(0) The offset. Useful if you want to page through the songs in a genre.
  /// @param musicFolderId (Since 1.12.0) Only return albums in the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getSongsByGenre].
  GetSongsByGenreProvider(
    GetSongsByGenreRequest request,
  ) : this._internal(
          (ref) => getSongsByGenre(
            ref as GetSongsByGenreRef,
            request,
          ),
          from: getSongsByGenreProvider,
          name: r'getSongsByGenreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSongsByGenreHash,
          dependencies: GetSongsByGenreFamily._dependencies,
          allTransitiveDependencies:
              GetSongsByGenreFamily._allTransitiveDependencies,
          request: request,
        );

  GetSongsByGenreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetSongsByGenreRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetSongsByGenreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSongsByGenreProvider._internal(
        (ref) => create(ref as GetSongsByGenreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetSongsByGenreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSongsByGenreProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSongsByGenreRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetSongsByGenreRequest get request;
}

class _GetSongsByGenreProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetSongsByGenreRef {
  _GetSongsByGenreProviderElement(super.provider);

  @override
  GetSongsByGenreRequest get request =>
      (origin as GetSongsByGenreProvider).request;
}

String _$getNowPlayingHash() => r'4b6303f2aa3611e5c82e2be3c67003c58f48a3a1';

/// http://your-server/rest/getNowPlaying Since 1.0.0
/// Returns what is currently being played by all users. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <nowPlaying> element on success. Example.
///
/// Copied from [getNowPlaying].
@ProviderFor(getNowPlaying)
final getNowPlayingProvider = AutoDisposeFutureProvider<Response>.internal(
  getNowPlaying,
  name: r'getNowPlayingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getNowPlayingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetNowPlayingRef = AutoDisposeFutureProviderRef<Response>;
String _$getStarredHash() => r'f7fa04641aa79059ad9328dc9da6e7adc5a7848e';

/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred].
@ProviderFor(getStarred)
const getStarredProvider = GetStarredFamily();

/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred].
class GetStarredFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getStarred Since 1.8.0
  /// Returns starred songs, albums and artists.
  /// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred].
  const GetStarredFamily();

  /// http://your-server/rest/getStarred Since 1.8.0
  /// Returns starred songs, albums and artists.
  /// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred].
  GetStarredProvider call(
    GetStarredRequest request,
  ) {
    return GetStarredProvider(
      request,
    );
  }

  @override
  GetStarredProvider getProviderOverride(
    covariant GetStarredProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStarredProvider';
}

/// http://your-server/rest/getStarred Since 1.8.0
/// Returns starred songs, albums and artists.
/// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred].
class GetStarredProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getStarred Since 1.8.0
  /// Returns starred songs, albums and artists.
  /// Returns a <subsonic-response> element with a nested <starred> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred].
  GetStarredProvider(
    GetStarredRequest request,
  ) : this._internal(
          (ref) => getStarred(
            ref as GetStarredRef,
            request,
          ),
          from: getStarredProvider,
          name: r'getStarredProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStarredHash,
          dependencies: GetStarredFamily._dependencies,
          allTransitiveDependencies:
              GetStarredFamily._allTransitiveDependencies,
          request: request,
        );

  GetStarredProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetStarredRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetStarredRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStarredProvider._internal(
        (ref) => create(ref as GetStarredRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetStarredProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStarredProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetStarredRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetStarredRequest get request;
}

class _GetStarredProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetStarredRef {
  _GetStarredProviderElement(super.provider);

  @override
  GetStarredRequest get request => (origin as GetStarredProvider).request;
}

String _$getStarred2Hash() => r'4f0edd10421649a1a7ccf3455460bcc641a9a861';

/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred2].
@ProviderFor(getStarred2)
const getStarred2Provider = GetStarred2Family();

/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred2].
class GetStarred2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getStarred2 Since 1.8.0
  /// Similar to getStarred, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred2].
  const GetStarred2Family();

  /// http://your-server/rest/getStarred2 Since 1.8.0
  /// Similar to getStarred, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred2].
  GetStarred2Provider call(
    GetStarred2Request request,
  ) {
    return GetStarred2Provider(
      request,
    );
  }

  @override
  GetStarred2Provider getProviderOverride(
    covariant GetStarred2Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getStarred2Provider';
}

/// http://your-server/rest/getStarred2 Since 1.8.0
/// Similar to getStarred, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [getStarred2].
class GetStarred2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getStarred2 Since 1.8.0
  /// Similar to getStarred, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <starred2> element on success. Example.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [getStarred2].
  GetStarred2Provider(
    GetStarred2Request request,
  ) : this._internal(
          (ref) => getStarred2(
            ref as GetStarred2Ref,
            request,
          ),
          from: getStarred2Provider,
          name: r'getStarred2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getStarred2Hash,
          dependencies: GetStarred2Family._dependencies,
          allTransitiveDependencies:
              GetStarred2Family._allTransitiveDependencies,
          request: request,
        );

  GetStarred2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetStarred2Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetStarred2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetStarred2Provider._internal(
        (ref) => create(ref as GetStarred2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetStarred2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetStarred2Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetStarred2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetStarred2Request get request;
}

class _GetStarred2ProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetStarred2Ref {
  _GetStarred2ProviderElement(super.provider);

  @override
  GetStarred2Request get request => (origin as GetStarred2Provider).request;
}

String _$searchHash() => r'63e5d1aa8140378c9bf5bd93bd3b62b9cf1f0ddb';

/// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
/// Returns a listing of files matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
/// @param artist Artist to search for.
/// @param album Album to searh for.
/// @param title Song title to search for.
/// @param any Searches all fields.
/// @param count Default(20) Maximum number of results to return.
/// @param offset Default(0) Search result offset. Used for paging.
/// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
///
/// Copied from [search].
@ProviderFor(search)
const searchProvider = SearchFamily();

/// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
/// Returns a listing of files matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
/// @param artist Artist to search for.
/// @param album Album to searh for.
/// @param title Song title to search for.
/// @param any Searches all fields.
/// @param count Default(20) Maximum number of results to return.
/// @param offset Default(0) Search result offset. Used for paging.
/// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
///
/// Copied from [search].
class SearchFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
  /// Returns a listing of files matching the given search criteria. Supports paging through the result.
  /// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
  /// @param artist Artist to search for.
  /// @param album Album to searh for.
  /// @param title Song title to search for.
  /// @param any Searches all fields.
  /// @param count Default(20) Maximum number of results to return.
  /// @param offset Default(0) Search result offset. Used for paging.
  /// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
  ///
  /// Copied from [search].
  const SearchFamily();

  /// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
  /// Returns a listing of files matching the given search criteria. Supports paging through the result.
  /// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
  /// @param artist Artist to search for.
  /// @param album Album to searh for.
  /// @param title Song title to search for.
  /// @param any Searches all fields.
  /// @param count Default(20) Maximum number of results to return.
  /// @param offset Default(0) Search result offset. Used for paging.
  /// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
  ///
  /// Copied from [search].
  SearchProvider call(
    SearchRequest request,
  ) {
    return SearchProvider(
      request,
    );
  }

  @override
  SearchProvider getProviderOverride(
    covariant SearchProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'searchProvider';
}

/// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
/// Returns a listing of files matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
/// @param artist Artist to search for.
/// @param album Album to searh for.
/// @param title Song title to search for.
/// @param any Searches all fields.
/// @param count Default(20) Maximum number of results to return.
/// @param offset Default(0) Search result offset. Used for paging.
/// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
///
/// Copied from [search].
class SearchProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/search Since 1.0.0 Deprecated since 1.4.0, use search2 instead.
  /// Returns a listing of files matching the given search criteria. Supports paging through the result.
  /// Returns a <subsonic-response> element with a nested <searchResult> element on success. Example.
  /// @param artist Artist to search for.
  /// @param album Album to searh for.
  /// @param title Song title to search for.
  /// @param any Searches all fields.
  /// @param count Default(20) Maximum number of results to return.
  /// @param offset Default(0) Search result offset. Used for paging.
  /// @param newerThan Only return matches that are newer than this. Given as milliseconds since 1970.
  ///
  /// Copied from [search].
  SearchProvider(
    SearchRequest request,
  ) : this._internal(
          (ref) => search(
            ref as SearchRef,
            request,
          ),
          from: searchProvider,
          name: r'searchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchHash,
          dependencies: SearchFamily._dependencies,
          allTransitiveDependencies: SearchFamily._allTransitiveDependencies,
          request: request,
        );

  SearchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final SearchRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SearchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SearchProvider._internal(
        (ref) => create(ref as SearchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SearchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SearchRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  SearchRequest get request;
}

class _SearchProviderElement extends AutoDisposeFutureProviderElement<Response>
    with SearchRef {
  _SearchProviderElement(super.provider);

  @override
  SearchRequest get request => (origin as SearchProvider).request;
}

String _$search2Hash() => r'a47a96467cfc2e8d5d63ffc43ebec3f9dde389a1';

/// http://your-server/rest/search2 Since 1.4.0
/// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [search2].
@ProviderFor(search2)
const search2Provider = Search2Family();

/// http://your-server/rest/search2 Since 1.4.0
/// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [search2].
class Search2Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/search2 Since 1.4.0
  /// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
  /// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
  /// @param query Search query.
  /// @param artistCount Default(20) Maximum number of artists to return.
  /// @param artistOffset Default(0) Search result offset for artists. Used for paging.
  /// @param albumCount Default(20) Maximum number of albums to return.
  /// @param albumOffset Default(0) Search result offset for albums. Used for paging.
  /// @param songCount Default(20) Maximum number of songs to return.
  /// @param songOffset Default(0) Search result offset for songs. Used for paging.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [search2].
  const Search2Family();

  /// http://your-server/rest/search2 Since 1.4.0
  /// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
  /// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
  /// @param query Search query.
  /// @param artistCount Default(20) Maximum number of artists to return.
  /// @param artistOffset Default(0) Search result offset for artists. Used for paging.
  /// @param albumCount Default(20) Maximum number of albums to return.
  /// @param albumOffset Default(0) Search result offset for albums. Used for paging.
  /// @param songCount Default(20) Maximum number of songs to return.
  /// @param songOffset Default(0) Search result offset for songs. Used for paging.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [search2].
  Search2Provider call(
    Search2Request request,
  ) {
    return Search2Provider(
      request,
    );
  }

  @override
  Search2Provider getProviderOverride(
    covariant Search2Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'search2Provider';
}

/// http://your-server/rest/search2 Since 1.4.0
/// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
/// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
///
/// Copied from [search2].
class Search2Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/search2 Since 1.4.0
  /// Returns albums, artists and songs matching the given search criteria. Supports paging through the result.
  /// Returns a <subsonic-response> element with a nested <searchResult2> element on success. Example.
  /// @param query Search query.
  /// @param artistCount Default(20) Maximum number of artists to return.
  /// @param artistOffset Default(0) Search result offset for artists. Used for paging.
  /// @param albumCount Default(20) Maximum number of albums to return.
  /// @param albumOffset Default(0) Search result offset for albums. Used for paging.
  /// @param songCount Default(20) Maximum number of songs to return.
  /// @param songOffset Default(0) Search result offset for songs. Used for paging.
  /// @param musicFolderId (Since 1.12.0) Only return results from the music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [search2].
  Search2Provider(
    Search2Request request,
  ) : this._internal(
          (ref) => search2(
            ref as Search2Ref,
            request,
          ),
          from: search2Provider,
          name: r'search2Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$search2Hash,
          dependencies: Search2Family._dependencies,
          allTransitiveDependencies: Search2Family._allTransitiveDependencies,
          request: request,
        );

  Search2Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final Search2Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(Search2Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: Search2Provider._internal(
        (ref) => create(ref as Search2Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _Search2ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is Search2Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin Search2Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  Search2Request get request;
}

class _Search2ProviderElement extends AutoDisposeFutureProviderElement<Response>
    with Search2Ref {
  _Search2ProviderElement(super.provider);

  @override
  Search2Request get request => (origin as Search2Provider).request;
}

String _$search3Hash() => r'8f66f0d71fda6b5971a9b2fd771cc54e71f51b38';

/// http://your-server/rest/search3 Since 1.8.0
/// Similar to search2, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
///
/// Copied from [search3].
@ProviderFor(search3)
const search3Provider = Search3Family();

/// http://your-server/rest/search3 Since 1.8.0
/// Similar to search2, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
///
/// Copied from [search3].
class Search3Family extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/search3 Since 1.8.0
  /// Similar to search2, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
  /// @param query Search query.
  /// @param artistCount Default(20) Maximum number of artists to return.
  /// @param artistOffset Default(0) Search result offset for artists. Used for paging.
  /// @param albumCount Default(20) Maximum number of albums to return.
  /// @param albumOffset Default(0) Search result offset for albums. Used for paging.
  /// @param songCount Default(20) Maximum number of songs to return.
  /// @param songOffset Default(0) Search result offset for songs. Used for paging.
  /// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [search3].
  const Search3Family();

  /// http://your-server/rest/search3 Since 1.8.0
  /// Similar to search2, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
  /// @param query Search query.
  /// @param artistCount Default(20) Maximum number of artists to return.
  /// @param artistOffset Default(0) Search result offset for artists. Used for paging.
  /// @param albumCount Default(20) Maximum number of albums to return.
  /// @param albumOffset Default(0) Search result offset for albums. Used for paging.
  /// @param songCount Default(20) Maximum number of songs to return.
  /// @param songOffset Default(0) Search result offset for songs. Used for paging.
  /// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [search3].
  Search3Provider call(
    Search3Request request,
  ) {
    return Search3Provider(
      request,
    );
  }

  @override
  Search3Provider getProviderOverride(
    covariant Search3Provider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'search3Provider';
}

/// http://your-server/rest/search3 Since 1.8.0
/// Similar to search2, but organizes music according to ID3 tags.
/// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
/// @param query Search query.
/// @param artistCount Default(20) Maximum number of artists to return.
/// @param artistOffset Default(0) Search result offset for artists. Used for paging.
/// @param albumCount Default(20) Maximum number of albums to return.
/// @param albumOffset Default(0) Search result offset for albums. Used for paging.
/// @param songCount Default(20) Maximum number of songs to return.
/// @param songOffset Default(0) Search result offset for songs. Used for paging.
/// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
///
/// Copied from [search3].
class Search3Provider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/search3 Since 1.8.0
  /// Similar to search2, but organizes music according to ID3 tags.
  /// Returns a <subsonic-response> element with a nested <searchResult3> element on success. Example.
  /// @param query Search query.
  /// @param artistCount Default(20) Maximum number of artists to return.
  /// @param artistOffset Default(0) Search result offset for artists. Used for paging.
  /// @param albumCount Default(20) Maximum number of albums to return.
  /// @param albumOffset Default(0) Search result offset for albums. Used for paging.
  /// @param songCount Default(20) Maximum number of songs to return.
  /// @param songOffset Default(0) Search result offset for songs. Used for paging.
  /// @param musicFolderId (Since 1.12.0) Only return results from music folder with the given ID. See getMusicFolders.
  ///
  /// Copied from [search3].
  Search3Provider(
    Search3Request request,
  ) : this._internal(
          (ref) => search3(
            ref as Search3Ref,
            request,
          ),
          from: search3Provider,
          name: r'search3Provider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$search3Hash,
          dependencies: Search3Family._dependencies,
          allTransitiveDependencies: Search3Family._allTransitiveDependencies,
          request: request,
        );

  Search3Provider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final Search3Request request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(Search3Ref provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: Search3Provider._internal(
        (ref) => create(ref as Search3Ref),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _Search3ProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is Search3Provider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin Search3Ref on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  Search3Request get request;
}

class _Search3ProviderElement extends AutoDisposeFutureProviderElement<Response>
    with Search3Ref {
  _Search3ProviderElement(super.provider);

  @override
  Search3Request get request => (origin as Search3Provider).request;
}

String _$getPlaylistsHash() => r'e6b2083de19e668094b73c83ae009e3d11e69447';

/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
///
/// Copied from [getPlaylists].
@ProviderFor(getPlaylists)
const getPlaylistsProvider = GetPlaylistsFamily();

/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
///
/// Copied from [getPlaylists].
class GetPlaylistsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getPlaylists Since 1.0.0
  /// Returns all playlists a user is allowed to play.
  /// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
  /// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
  ///
  /// Copied from [getPlaylists].
  const GetPlaylistsFamily();

  /// http://your-server/rest/getPlaylists Since 1.0.0
  /// Returns all playlists a user is allowed to play.
  /// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
  /// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
  ///
  /// Copied from [getPlaylists].
  GetPlaylistsProvider call(
    GetPlaylistsRequest request,
  ) {
    return GetPlaylistsProvider(
      request,
    );
  }

  @override
  GetPlaylistsProvider getProviderOverride(
    covariant GetPlaylistsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlaylistsProvider';
}

/// http://your-server/rest/getPlaylists Since 1.0.0
/// Returns all playlists a user is allowed to play.
/// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
/// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
///
/// Copied from [getPlaylists].
class GetPlaylistsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getPlaylists Since 1.0.0
  /// Returns all playlists a user is allowed to play.
  /// Returns a <subsonic-response> element with a nested <playlists> element on success. Example.
  /// @param username (Since 1.8.0) If specified, return playlists for this user rather than for the authenticated user. The authenticated user must have admin role if this parameter is used.
  ///
  /// Copied from [getPlaylists].
  GetPlaylistsProvider(
    GetPlaylistsRequest request,
  ) : this._internal(
          (ref) => getPlaylists(
            ref as GetPlaylistsRef,
            request,
          ),
          from: getPlaylistsProvider,
          name: r'getPlaylistsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaylistsHash,
          dependencies: GetPlaylistsFamily._dependencies,
          allTransitiveDependencies:
              GetPlaylistsFamily._allTransitiveDependencies,
          request: request,
        );

  GetPlaylistsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetPlaylistsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetPlaylistsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlaylistsProvider._internal(
        (ref) => create(ref as GetPlaylistsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetPlaylistsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlaylistsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlaylistsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetPlaylistsRequest get request;
}

class _GetPlaylistsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetPlaylistsRef {
  _GetPlaylistsProviderElement(super.provider);

  @override
  GetPlaylistsRequest get request => (origin as GetPlaylistsProvider).request;
}

String _$getPlaylistHash() => r'c29dc95a9835a5941b2c72f0f60fb6350c3c75e2';

/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
///
/// Copied from [getPlaylist].
@ProviderFor(getPlaylist)
const getPlaylistProvider = GetPlaylistFamily();

/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
///
/// Copied from [getPlaylist].
class GetPlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getPlaylist Since 1.0.0
  /// Returns a listing of files in a saved playlist.
  /// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
  /// @param id ID of the playlist to return, as obtained by getPlaylists.
  ///
  /// Copied from [getPlaylist].
  const GetPlaylistFamily();

  /// http://your-server/rest/getPlaylist Since 1.0.0
  /// Returns a listing of files in a saved playlist.
  /// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
  /// @param id ID of the playlist to return, as obtained by getPlaylists.
  ///
  /// Copied from [getPlaylist].
  GetPlaylistProvider call(
    GetPlaylistRequest request,
  ) {
    return GetPlaylistProvider(
      request,
    );
  }

  @override
  GetPlaylistProvider getProviderOverride(
    covariant GetPlaylistProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPlaylistProvider';
}

/// http://your-server/rest/getPlaylist Since 1.0.0
/// Returns a listing of files in a saved playlist.
/// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
/// @param id ID of the playlist to return, as obtained by getPlaylists.
///
/// Copied from [getPlaylist].
class GetPlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getPlaylist Since 1.0.0
  /// Returns a listing of files in a saved playlist.
  /// Returns a <subsonic-response> element with a nested <playlist> element on success. Example.
  /// @param id ID of the playlist to return, as obtained by getPlaylists.
  ///
  /// Copied from [getPlaylist].
  GetPlaylistProvider(
    GetPlaylistRequest request,
  ) : this._internal(
          (ref) => getPlaylist(
            ref as GetPlaylistRef,
            request,
          ),
          from: getPlaylistProvider,
          name: r'getPlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPlaylistHash,
          dependencies: GetPlaylistFamily._dependencies,
          allTransitiveDependencies:
              GetPlaylistFamily._allTransitiveDependencies,
          request: request,
        );

  GetPlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetPlaylistRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetPlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPlaylistProvider._internal(
        (ref) => create(ref as GetPlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetPlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPlaylistProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetPlaylistRequest get request;
}

class _GetPlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetPlaylistRef {
  _GetPlaylistProviderElement(super.provider);

  @override
  GetPlaylistRequest get request => (origin as GetPlaylistProvider).request;
}

String _$createPlaylistHash() => r'a98c6b1218fc9e2b2cf29e5c303966ea8e3f75a1';

/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
///
/// Copied from [createPlaylist].
@ProviderFor(createPlaylist)
const createPlaylistProvider = CreatePlaylistFamily();

/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
///
/// Copied from [createPlaylist].
class CreatePlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createPlaylist Since 1.2.0
  /// Creates (or updates) a playlist.
  /// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
  ///
  /// Copied from [createPlaylist].
  const CreatePlaylistFamily();

  /// http://your-server/rest/createPlaylist Since 1.2.0
  /// Creates (or updates) a playlist.
  /// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
  ///
  /// Copied from [createPlaylist].
  CreatePlaylistProvider call(
    CreatePlaylistRequest request,
  ) {
    return CreatePlaylistProvider(
      request,
    );
  }

  @override
  CreatePlaylistProvider getProviderOverride(
    covariant CreatePlaylistProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createPlaylistProvider';
}

/// http://your-server/rest/createPlaylist Since 1.2.0
/// Creates (or updates) a playlist.
/// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
///
/// Copied from [createPlaylist].
class CreatePlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createPlaylist Since 1.2.0
  /// Creates (or updates) a playlist.
  /// Since 1.14.0 the newly created/updated playlist is returned. In earlier versions an empty <subsonic-response> element is returned.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param songId ID of a song in the playlist. Use one songId parameter for each song in the playlist.
  ///
  /// Copied from [createPlaylist].
  CreatePlaylistProvider(
    CreatePlaylistRequest request,
  ) : this._internal(
          (ref) => createPlaylist(
            ref as CreatePlaylistRef,
            request,
          ),
          from: createPlaylistProvider,
          name: r'createPlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPlaylistHash,
          dependencies: CreatePlaylistFamily._dependencies,
          allTransitiveDependencies:
              CreatePlaylistFamily._allTransitiveDependencies,
          request: request,
        );

  CreatePlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreatePlaylistRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreatePlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreatePlaylistProvider._internal(
        (ref) => create(ref as CreatePlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreatePlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePlaylistProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreatePlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  CreatePlaylistRequest get request;
}

class _CreatePlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreatePlaylistRef {
  _CreatePlaylistProviderElement(super.provider);

  @override
  CreatePlaylistRequest get request =>
      (origin as CreatePlaylistProvider).request;
}

String _$updatePlaylistHash() => r'1386c13e57117e5b7dbabddf84a9adb34db9c8ba';

/// http://your-server/rest/updatePlaylist Since 1.8.0
/// Updates a playlist. Only the owner of a playlist is allowed to update it.
/// Returns an empty <subsonic-response> element on success.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param comment The playlist comment.
/// @param public true if the playlist should be visible to all users, false otherwise.
/// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
/// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
///
/// Copied from [updatePlaylist].
@ProviderFor(updatePlaylist)
const updatePlaylistProvider = UpdatePlaylistFamily();

/// http://your-server/rest/updatePlaylist Since 1.8.0
/// Updates a playlist. Only the owner of a playlist is allowed to update it.
/// Returns an empty <subsonic-response> element on success.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param comment The playlist comment.
/// @param public true if the playlist should be visible to all users, false otherwise.
/// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
/// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
///
/// Copied from [updatePlaylist].
class UpdatePlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updatePlaylist Since 1.8.0
  /// Updates a playlist. Only the owner of a playlist is allowed to update it.
  /// Returns an empty <subsonic-response> element on success.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param comment The playlist comment.
  /// @param public true if the playlist should be visible to all users, false otherwise.
  /// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
  /// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
  ///
  /// Copied from [updatePlaylist].
  const UpdatePlaylistFamily();

  /// http://your-server/rest/updatePlaylist Since 1.8.0
  /// Updates a playlist. Only the owner of a playlist is allowed to update it.
  /// Returns an empty <subsonic-response> element on success.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param comment The playlist comment.
  /// @param public true if the playlist should be visible to all users, false otherwise.
  /// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
  /// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
  ///
  /// Copied from [updatePlaylist].
  UpdatePlaylistProvider call(
    UpdatePlaylistRequest request,
  ) {
    return UpdatePlaylistProvider(
      request,
    );
  }

  @override
  UpdatePlaylistProvider getProviderOverride(
    covariant UpdatePlaylistProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updatePlaylistProvider';
}

/// http://your-server/rest/updatePlaylist Since 1.8.0
/// Updates a playlist. Only the owner of a playlist is allowed to update it.
/// Returns an empty <subsonic-response> element on success.
/// @param playlistId The playlist ID.
/// @param name The human-readable name of the playlist.
/// @param comment The playlist comment.
/// @param public true if the playlist should be visible to all users, false otherwise.
/// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
/// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
///
/// Copied from [updatePlaylist].
class UpdatePlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updatePlaylist Since 1.8.0
  /// Updates a playlist. Only the owner of a playlist is allowed to update it.
  /// Returns an empty <subsonic-response> element on success.
  /// @param playlistId The playlist ID.
  /// @param name The human-readable name of the playlist.
  /// @param comment The playlist comment.
  /// @param public true if the playlist should be visible to all users, false otherwise.
  /// @param songIdToAdd Add this song with this ID to the playlist. Multiple parameters allowed.
  /// @param songIndexToRemove Remove the song at this position in the playlist. Multiple parameters allowed.
  ///
  /// Copied from [updatePlaylist].
  UpdatePlaylistProvider(
    UpdatePlaylistRequest request,
  ) : this._internal(
          (ref) => updatePlaylist(
            ref as UpdatePlaylistRef,
            request,
          ),
          from: updatePlaylistProvider,
          name: r'updatePlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updatePlaylistHash,
          dependencies: UpdatePlaylistFamily._dependencies,
          allTransitiveDependencies:
              UpdatePlaylistFamily._allTransitiveDependencies,
          request: request,
        );

  UpdatePlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final UpdatePlaylistRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdatePlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdatePlaylistProvider._internal(
        (ref) => create(ref as UpdatePlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdatePlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatePlaylistProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdatePlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  UpdatePlaylistRequest get request;
}

class _UpdatePlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with UpdatePlaylistRef {
  _UpdatePlaylistProviderElement(super.provider);

  @override
  UpdatePlaylistRequest get request =>
      (origin as UpdatePlaylistProvider).request;
}

String _$deletePlaylistHash() => r'c7a9a62675c9453a34315d1ce7e64ff47fd8f56d';

/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
///
/// Copied from [deletePlaylist].
@ProviderFor(deletePlaylist)
const deletePlaylistProvider = DeletePlaylistFamily();

/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
///
/// Copied from [deletePlaylist].
class DeletePlaylistFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deletePlaylist Since 1.2.0
  /// Deletes a saved playlist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the playlist to delete, as obtained by getPlaylists.
  ///
  /// Copied from [deletePlaylist].
  const DeletePlaylistFamily();

  /// http://your-server/rest/deletePlaylist Since 1.2.0
  /// Deletes a saved playlist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the playlist to delete, as obtained by getPlaylists.
  ///
  /// Copied from [deletePlaylist].
  DeletePlaylistProvider call(
    DeletePlaylistRequest request,
  ) {
    return DeletePlaylistProvider(
      request,
    );
  }

  @override
  DeletePlaylistProvider getProviderOverride(
    covariant DeletePlaylistProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deletePlaylistProvider';
}

/// http://your-server/rest/deletePlaylist Since 1.2.0
/// Deletes a saved playlist.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the playlist to delete, as obtained by getPlaylists.
///
/// Copied from [deletePlaylist].
class DeletePlaylistProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deletePlaylist Since 1.2.0
  /// Deletes a saved playlist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the playlist to delete, as obtained by getPlaylists.
  ///
  /// Copied from [deletePlaylist].
  DeletePlaylistProvider(
    DeletePlaylistRequest request,
  ) : this._internal(
          (ref) => deletePlaylist(
            ref as DeletePlaylistRef,
            request,
          ),
          from: deletePlaylistProvider,
          name: r'deletePlaylistProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePlaylistHash,
          dependencies: DeletePlaylistFamily._dependencies,
          allTransitiveDependencies:
              DeletePlaylistFamily._allTransitiveDependencies,
          request: request,
        );

  DeletePlaylistProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeletePlaylistRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeletePlaylistRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePlaylistProvider._internal(
        (ref) => create(ref as DeletePlaylistRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeletePlaylistProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePlaylistProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePlaylistRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeletePlaylistRequest get request;
}

class _DeletePlaylistProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeletePlaylistRef {
  _DeletePlaylistProviderElement(super.provider);

  @override
  DeletePlaylistRequest get request =>
      (origin as DeletePlaylistProvider).request;
}

String _$streamHash() => r'312eade5d1bdb411b076bebc409fa488958a4759';

/// http://your-server/rest/stream Since 1.0.0
/// Streams a given media file.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
/// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
/// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
/// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
/// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
/// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
/// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
///
/// Copied from [stream].
@ProviderFor(stream)
const streamProvider = StreamFamily();

/// http://your-server/rest/stream Since 1.0.0
/// Streams a given media file.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
/// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
/// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
/// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
/// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
/// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
/// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
///
/// Copied from [stream].
class StreamFamily extends Family<String> {
  /// http://your-server/rest/stream Since 1.0.0
  /// Streams a given media file.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
  /// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
  /// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
  /// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
  /// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
  /// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
  /// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
  ///
  /// Copied from [stream].
  const StreamFamily();

  /// http://your-server/rest/stream Since 1.0.0
  /// Streams a given media file.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
  /// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
  /// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
  /// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
  /// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
  /// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
  /// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
  ///
  /// Copied from [stream].
  StreamProvider call(
    StreamRequest request,
  ) {
    return StreamProvider(
      request,
    );
  }

  @override
  StreamProvider getProviderOverride(
    covariant StreamProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'streamProvider';
}

/// http://your-server/rest/stream Since 1.0.0
/// Streams a given media file.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
/// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
/// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
/// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
/// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
/// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
/// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
///
/// Copied from [stream].
class StreamProvider extends AutoDisposeProvider<String> {
  /// http://your-server/rest/stream Since 1.0.0
  /// Streams a given media file.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to stream. Obtained by calls to getMusicDirectory.
  /// @param maxBitRate (Since 1.2.0) If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If set to zero, no limit is imposed.
  /// @param format (Since 1.6.0) Specifies the preferred target format (e.g., "mp3" or "flv") in case there are multiple applicable transcodings. Starting with 1.9.0 you can use the special value "raw" to disable transcoding.
  /// @param timeOffset Only applicable to video streaming. If specified, start streaming at the given offset (in seconds) into the video. Typically used to implement video skipping.
  /// @param size (Since 1.6.0) Only applicable to video streaming. Requested video size specified as WxH, for instance "640x480".
  /// @param estimateContentLength Default(false) (Since 1.8.0). If set to "true", the Content-Length HTTP header will be set to an estimated value for transcoded or downsampled media.
  /// @param converted Default(false) (Since 1.14.0) Only applicable to video streaming. Subsonic can optimize videos for streaming by converting them to MP4. If a conversion exists for the video in question, then setting this parameter to "true" will cause the converted video to be returned instead of the original.
  ///
  /// Copied from [stream].
  StreamProvider(
    StreamRequest request,
  ) : this._internal(
          (ref) => stream(
            ref as StreamRef,
            request,
          ),
          from: streamProvider,
          name: r'streamProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$streamHash,
          dependencies: StreamFamily._dependencies,
          allTransitiveDependencies: StreamFamily._allTransitiveDependencies,
          request: request,
        );

  StreamProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final StreamRequest request;

  @override
  Override overrideWith(
    String Function(StreamRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StreamProvider._internal(
        (ref) => create(ref as StreamRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _StreamProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StreamProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StreamRef on AutoDisposeProviderRef<String> {
  /// The parameter `request` of this provider.
  StreamRequest get request;
}

class _StreamProviderElement extends AutoDisposeProviderElement<String>
    with StreamRef {
  _StreamProviderElement(super.provider);

  @override
  StreamRequest get request => (origin as StreamProvider).request;
}

String _$downloadHash() => r'b61878c0df3118755c8539ecce5b50ef601019b2';

/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
///
/// Copied from [download].
@ProviderFor(download)
const downloadProvider = DownloadFamily();

/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
///
/// Copied from [download].
class DownloadFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/download Since 1.0.0
  /// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
  ///
  /// Copied from [download].
  const DownloadFamily();

  /// http://your-server/rest/download Since 1.0.0
  /// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
  ///
  /// Copied from [download].
  DownloadProvider call(
    DownloadRequest request,
  ) {
    return DownloadProvider(
      request,
    );
  }

  @override
  DownloadProvider getProviderOverride(
    covariant DownloadProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'downloadProvider';
}

/// http://your-server/rest/download Since 1.0.0
/// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
/// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
///
/// Copied from [download].
class DownloadProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/download Since 1.0.0
  /// Downloads a given media file. Similar to stream, but this method returns the original media data without transcoding or downsampling.
  /// Returns binary data on success, or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the file to download. Obtained by calls to getMusicDirectory.
  ///
  /// Copied from [download].
  DownloadProvider(
    DownloadRequest request,
  ) : this._internal(
          (ref) => download(
            ref as DownloadRef,
            request,
          ),
          from: downloadProvider,
          name: r'downloadProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$downloadHash,
          dependencies: DownloadFamily._dependencies,
          allTransitiveDependencies: DownloadFamily._allTransitiveDependencies,
          request: request,
        );

  DownloadProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DownloadRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DownloadRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DownloadProvider._internal(
        (ref) => create(ref as DownloadRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DownloadProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DownloadProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DownloadRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DownloadRequest get request;
}

class _DownloadProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DownloadRef {
  _DownloadProviderElement(super.provider);

  @override
  DownloadRequest get request => (origin as DownloadProvider).request;
}

String _$hlsHash() => r'20e0c162673dd184dcc32cfd256052e6f7bc2929';

/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
///
/// Copied from [hls].
@ProviderFor(hls)
const hlsProvider = HlsFamily();

/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
///
/// Copied from [hls].
class HlsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/hls.m3u8 Since 1.8.0
  /// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
  /// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the media file to stream.
  /// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
  /// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
  ///
  /// Copied from [hls].
  const HlsFamily();

  /// http://your-server/rest/hls.m3u8 Since 1.8.0
  /// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
  /// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the media file to stream.
  /// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
  /// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
  ///
  /// Copied from [hls].
  HlsProvider call(
    HlsRequest request,
  ) {
    return HlsProvider(
      request,
    );
  }

  @override
  HlsProvider getProviderOverride(
    covariant HlsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'hlsProvider';
}

/// http://your-server/rest/hls.m3u8 Since 1.8.0
/// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
/// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
/// @param id A string which uniquely identifies the media file to stream.
/// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
/// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
///
/// Copied from [hls].
class HlsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/hls.m3u8 Since 1.8.0
  /// Creates an HLS (HTTP Live Streaming) playlist used for streaming video or audio. HLS is a streaming protocol implemented by Apple and works by breaking the overall stream into a sequence of small HTTP-based file downloads. It's supported by iOS and newer versions of Android. This method also supports adaptive bitrate streaming, see the bitRate parameter.
  /// Returns an M3U8 playlist on success (content type "application/vnd.apple.mpegurl"), or an XML document on error (in which case the HTTP content type will start with "text/xml").
  /// @param id A string which uniquely identifies the media file to stream.
  /// @param bitRate If specified, the server will attempt to limit the bitrate to this value, in kilobits per second. If this parameter is specified more than once, the server will create a variant playlist, suitable for adaptive bitrate streaming. The playlist will support streaming at all the specified bitrates. The server will automatically choose video dimensions that are suitable for the given bitrates. Since 1.9.0 you may explicitly request a certain width (480) and height (360) like so: bitRate=1000@480x360
  /// @param audioTrack The ID of the audio track to use. See getVideoInfo for how to get the list of available audio tracks for a video.
  ///
  /// Copied from [hls].
  HlsProvider(
    HlsRequest request,
  ) : this._internal(
          (ref) => hls(
            ref as HlsRef,
            request,
          ),
          from: hlsProvider,
          name: r'hlsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$hlsHash,
          dependencies: HlsFamily._dependencies,
          allTransitiveDependencies: HlsFamily._allTransitiveDependencies,
          request: request,
        );

  HlsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final HlsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(HlsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: HlsProvider._internal(
        (ref) => create(ref as HlsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _HlsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HlsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin HlsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  HlsRequest get request;
}

class _HlsProviderElement extends AutoDisposeFutureProviderElement<Response>
    with HlsRef {
  _HlsProviderElement(super.provider);

  @override
  HlsRequest get request => (origin as HlsProvider).request;
}

String _$getCaptionsHash() => r'a606d9e2262829d78f07dc8458ddaa1fd85f758c';

/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
///
/// Copied from [getCaptions].
@ProviderFor(getCaptions)
const getCaptionsProvider = GetCaptionsFamily();

/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
///
/// Copied from [getCaptions].
class GetCaptionsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getCaptions Since 1.14.0
  /// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
  /// Returns the raw video captions.
  /// @param id The ID of the video.
  /// @param format Preferred captions format ("srt" or "vtt").
  ///
  /// Copied from [getCaptions].
  const GetCaptionsFamily();

  /// http://your-server/rest/getCaptions Since 1.14.0
  /// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
  /// Returns the raw video captions.
  /// @param id The ID of the video.
  /// @param format Preferred captions format ("srt" or "vtt").
  ///
  /// Copied from [getCaptions].
  GetCaptionsProvider call(
    GetCaptionsRequest request,
  ) {
    return GetCaptionsProvider(
      request,
    );
  }

  @override
  GetCaptionsProvider getProviderOverride(
    covariant GetCaptionsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCaptionsProvider';
}

/// http://your-server/rest/getCaptions Since 1.14.0
/// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
/// Returns the raw video captions.
/// @param id The ID of the video.
/// @param format Preferred captions format ("srt" or "vtt").
///
/// Copied from [getCaptions].
class GetCaptionsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getCaptions Since 1.14.0
  /// Returns captions (subtitles) for a video. Use getVideoInfo to get a list of available captions.
  /// Returns the raw video captions.
  /// @param id The ID of the video.
  /// @param format Preferred captions format ("srt" or "vtt").
  ///
  /// Copied from [getCaptions].
  GetCaptionsProvider(
    GetCaptionsRequest request,
  ) : this._internal(
          (ref) => getCaptions(
            ref as GetCaptionsRef,
            request,
          ),
          from: getCaptionsProvider,
          name: r'getCaptionsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCaptionsHash,
          dependencies: GetCaptionsFamily._dependencies,
          allTransitiveDependencies:
              GetCaptionsFamily._allTransitiveDependencies,
          request: request,
        );

  GetCaptionsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetCaptionsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetCaptionsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCaptionsProvider._internal(
        (ref) => create(ref as GetCaptionsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetCaptionsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCaptionsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCaptionsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetCaptionsRequest get request;
}

class _GetCaptionsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetCaptionsRef {
  _GetCaptionsProviderElement(super.provider);

  @override
  GetCaptionsRequest get request => (origin as GetCaptionsProvider).request;
}

String _$getCoverArtHash() => r'7f8214cb12004995198a65338fbfe5796fc5cd9d';

/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
///
/// Copied from [getCoverArt].
@ProviderFor(getCoverArt)
const getCoverArtProvider = GetCoverArtFamily();

/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
///
/// Copied from [getCoverArt].
class GetCoverArtFamily extends Family<String> {
  /// http://your-server/rest/getCoverArt Since 1.0.0
  /// Returns a cover art image.
  /// Returns the cover art image in binary form.
  /// @param id The ID of a song, album or artist.
  /// @param size If specified, scale image to this size.
  ///
  /// Copied from [getCoverArt].
  const GetCoverArtFamily();

  /// http://your-server/rest/getCoverArt Since 1.0.0
  /// Returns a cover art image.
  /// Returns the cover art image in binary form.
  /// @param id The ID of a song, album or artist.
  /// @param size If specified, scale image to this size.
  ///
  /// Copied from [getCoverArt].
  GetCoverArtProvider call(
    GetCoverArtRequest request,
  ) {
    return GetCoverArtProvider(
      request,
    );
  }

  @override
  GetCoverArtProvider getProviderOverride(
    covariant GetCoverArtProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCoverArtProvider';
}

/// http://your-server/rest/getCoverArt Since 1.0.0
/// Returns a cover art image.
/// Returns the cover art image in binary form.
/// @param id The ID of a song, album or artist.
/// @param size If specified, scale image to this size.
///
/// Copied from [getCoverArt].
class GetCoverArtProvider extends AutoDisposeProvider<String> {
  /// http://your-server/rest/getCoverArt Since 1.0.0
  /// Returns a cover art image.
  /// Returns the cover art image in binary form.
  /// @param id The ID of a song, album or artist.
  /// @param size If specified, scale image to this size.
  ///
  /// Copied from [getCoverArt].
  GetCoverArtProvider(
    GetCoverArtRequest request,
  ) : this._internal(
          (ref) => getCoverArt(
            ref as GetCoverArtRef,
            request,
          ),
          from: getCoverArtProvider,
          name: r'getCoverArtProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCoverArtHash,
          dependencies: GetCoverArtFamily._dependencies,
          allTransitiveDependencies:
              GetCoverArtFamily._allTransitiveDependencies,
          request: request,
        );

  GetCoverArtProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetCoverArtRequest request;

  @override
  Override overrideWith(
    String Function(GetCoverArtRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetCoverArtProvider._internal(
        (ref) => create(ref as GetCoverArtRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _GetCoverArtProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCoverArtProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCoverArtRef on AutoDisposeProviderRef<String> {
  /// The parameter `request` of this provider.
  GetCoverArtRequest get request;
}

class _GetCoverArtProviderElement extends AutoDisposeProviderElement<String>
    with GetCoverArtRef {
  _GetCoverArtProviderElement(super.provider);

  @override
  GetCoverArtRequest get request => (origin as GetCoverArtProvider).request;
}

String _$getLyricsHash() => r'7a5bf2ef97b878acdd9fc64b8394b803c2aa1936';

/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
///
/// Copied from [getLyrics].
@ProviderFor(getLyrics)
const getLyricsProvider = GetLyricsFamily();

/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
///
/// Copied from [getLyrics].
class GetLyricsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getLyrics Since 1.2.0
  /// Searches for and returns lyrics for a given song.
  /// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
  /// @param artist The artist name.
  /// @param title The song title.
  ///
  /// Copied from [getLyrics].
  const GetLyricsFamily();

  /// http://your-server/rest/getLyrics Since 1.2.0
  /// Searches for and returns lyrics for a given song.
  /// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
  /// @param artist The artist name.
  /// @param title The song title.
  ///
  /// Copied from [getLyrics].
  GetLyricsProvider call(
    GetLyricsRequest request,
  ) {
    return GetLyricsProvider(
      request,
    );
  }

  @override
  GetLyricsProvider getProviderOverride(
    covariant GetLyricsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getLyricsProvider';
}

/// http://your-server/rest/getLyrics Since 1.2.0
/// Searches for and returns lyrics for a given song.
/// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
/// @param artist The artist name.
/// @param title The song title.
///
/// Copied from [getLyrics].
class GetLyricsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getLyrics Since 1.2.0
  /// Searches for and returns lyrics for a given song.
  /// Returns a <subsonic-response> element with a nested <lyrics> element on success. The <lyrics> element is empty if no matching lyrics was found. Example.
  /// @param artist The artist name.
  /// @param title The song title.
  ///
  /// Copied from [getLyrics].
  GetLyricsProvider(
    GetLyricsRequest request,
  ) : this._internal(
          (ref) => getLyrics(
            ref as GetLyricsRef,
            request,
          ),
          from: getLyricsProvider,
          name: r'getLyricsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLyricsHash,
          dependencies: GetLyricsFamily._dependencies,
          allTransitiveDependencies: GetLyricsFamily._allTransitiveDependencies,
          request: request,
        );

  GetLyricsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetLyricsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetLyricsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetLyricsProvider._internal(
        (ref) => create(ref as GetLyricsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetLyricsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetLyricsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetLyricsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetLyricsRequest get request;
}

class _GetLyricsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetLyricsRef {
  _GetLyricsProviderElement(super.provider);

  @override
  GetLyricsRequest get request => (origin as GetLyricsProvider).request;
}

String _$getAvatarHash() => r'6cdf65cec186d3e6008233034396ccd81697f565';

/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
///
/// Copied from [getAvatar].
@ProviderFor(getAvatar)
const getAvatarProvider = GetAvatarFamily();

/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
///
/// Copied from [getAvatar].
class GetAvatarFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getAvatar Since 1.8.0
  /// Returns the avatar (personal image) for a user.
  /// Returns the avatar image in binary form.
  /// @param username The user in question.
  ///
  /// Copied from [getAvatar].
  const GetAvatarFamily();

  /// http://your-server/rest/getAvatar Since 1.8.0
  /// Returns the avatar (personal image) for a user.
  /// Returns the avatar image in binary form.
  /// @param username The user in question.
  ///
  /// Copied from [getAvatar].
  GetAvatarProvider call(
    GetAvatarRequest request,
  ) {
    return GetAvatarProvider(
      request,
    );
  }

  @override
  GetAvatarProvider getProviderOverride(
    covariant GetAvatarProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getAvatarProvider';
}

/// http://your-server/rest/getAvatar Since 1.8.0
/// Returns the avatar (personal image) for a user.
/// Returns the avatar image in binary form.
/// @param username The user in question.
///
/// Copied from [getAvatar].
class GetAvatarProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getAvatar Since 1.8.0
  /// Returns the avatar (personal image) for a user.
  /// Returns the avatar image in binary form.
  /// @param username The user in question.
  ///
  /// Copied from [getAvatar].
  GetAvatarProvider(
    GetAvatarRequest request,
  ) : this._internal(
          (ref) => getAvatar(
            ref as GetAvatarRef,
            request,
          ),
          from: getAvatarProvider,
          name: r'getAvatarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getAvatarHash,
          dependencies: GetAvatarFamily._dependencies,
          allTransitiveDependencies: GetAvatarFamily._allTransitiveDependencies,
          request: request,
        );

  GetAvatarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetAvatarRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetAvatarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetAvatarProvider._internal(
        (ref) => create(ref as GetAvatarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetAvatarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAvatarProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetAvatarRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetAvatarRequest get request;
}

class _GetAvatarProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetAvatarRef {
  _GetAvatarProviderElement(super.provider);

  @override
  GetAvatarRequest get request => (origin as GetAvatarProvider).request;
}

String _$starHash() => r'2ee92dccd384771aeddc981b086607f29c708ba1';

/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [star].
@ProviderFor(star)
const starProvider = StarFamily();

/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [star].
class StarFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/star Since 1.8.0
  /// Attaches a star to a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
  /// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [star].
  const StarFamily();

  /// http://your-server/rest/star Since 1.8.0
  /// Attaches a star to a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
  /// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [star].
  StarProvider call(
    StarRequest request,
  ) {
    return StarProvider(
      request,
    );
  }

  @override
  StarProvider getProviderOverride(
    covariant StarProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'starProvider';
}

/// http://your-server/rest/star Since 1.8.0
/// Attaches a star to a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
/// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [star].
class StarProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/star Since 1.8.0
  /// Attaches a star to a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to star. Multiple parameters allowed.
  /// @param albumId The ID of an album to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to star. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [star].
  StarProvider(
    StarRequest request,
  ) : this._internal(
          (ref) => star(
            ref as StarRef,
            request,
          ),
          from: starProvider,
          name: r'starProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product') ? null : _$starHash,
          dependencies: StarFamily._dependencies,
          allTransitiveDependencies: StarFamily._allTransitiveDependencies,
          request: request,
        );

  StarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final StarRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(StarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: StarProvider._internal(
        (ref) => create(ref as StarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _StarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is StarProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin StarRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  StarRequest get request;
}

class _StarProviderElement extends AutoDisposeFutureProviderElement<Response>
    with StarRef {
  _StarProviderElement(super.provider);

  @override
  StarRequest get request => (origin as StarProvider).request;
}

String _$unstarHash() => r'19826ff4d08882c975db862554148557def003bf';

/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [unstar].
@ProviderFor(unstar)
const unstarProvider = UnstarFamily();

/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [unstar].
class UnstarFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/unstar Since 1.8.0
  /// Removes the star from a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
  /// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [unstar].
  const UnstarFamily();

  /// http://your-server/rest/unstar Since 1.8.0
  /// Removes the star from a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
  /// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [unstar].
  UnstarProvider call(
    UnstarRequest request,
  ) {
    return UnstarProvider(
      request,
    );
  }

  @override
  UnstarProvider getProviderOverride(
    covariant UnstarProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'unstarProvider';
}

/// http://your-server/rest/unstar Since 1.8.0
/// Removes the star from a song, album or artist.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
/// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
/// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
///
/// Copied from [unstar].
class UnstarProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/unstar Since 1.8.0
  /// Removes the star from a song, album or artist.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the file (song) or folder (album/artist) to unstar. Multiple parameters allowed.
  /// @param albumId The ID of an album to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  /// @param artistId The ID of an artist to unstar. Use this rather than id if the client accesses the media collection according to ID3 tags rather than file structure. Multiple parameters allowed.
  ///
  /// Copied from [unstar].
  UnstarProvider(
    UnstarRequest request,
  ) : this._internal(
          (ref) => unstar(
            ref as UnstarRef,
            request,
          ),
          from: unstarProvider,
          name: r'unstarProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$unstarHash,
          dependencies: UnstarFamily._dependencies,
          allTransitiveDependencies: UnstarFamily._allTransitiveDependencies,
          request: request,
        );

  UnstarProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final UnstarRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UnstarRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UnstarProvider._internal(
        (ref) => create(ref as UnstarRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UnstarProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UnstarProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UnstarRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  UnstarRequest get request;
}

class _UnstarProviderElement extends AutoDisposeFutureProviderElement<Response>
    with UnstarRef {
  _UnstarProviderElement(super.provider);

  @override
  UnstarRequest get request => (origin as UnstarProvider).request;
}

String _$setRatingHash() => r'f5c3220f43b51380eb5f50d4898c4fc28737de53';

/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
///
/// Copied from [setRating].
@ProviderFor(setRating)
const setRatingProvider = SetRatingFamily();

/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
///
/// Copied from [setRating].
class SetRatingFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/setRating Since 1.6.0
  /// Sets the rating for a music file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
  /// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
  ///
  /// Copied from [setRating].
  const SetRatingFamily();

  /// http://your-server/rest/setRating Since 1.6.0
  /// Sets the rating for a music file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
  /// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
  ///
  /// Copied from [setRating].
  SetRatingProvider call(
    SetRatingRequest request,
  ) {
    return SetRatingProvider(
      request,
    );
  }

  @override
  SetRatingProvider getProviderOverride(
    covariant SetRatingProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setRatingProvider';
}

/// http://your-server/rest/setRating Since 1.6.0
/// Sets the rating for a music file.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
/// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
///
/// Copied from [setRating].
class SetRatingProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/setRating Since 1.6.0
  /// Sets the rating for a music file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file (song) or folder (album/artist) to rate.
  /// @param rating The rating between 1 and 5 (inclusive), or 0 to remove the rating.
  ///
  /// Copied from [setRating].
  SetRatingProvider(
    SetRatingRequest request,
  ) : this._internal(
          (ref) => setRating(
            ref as SetRatingRef,
            request,
          ),
          from: setRatingProvider,
          name: r'setRatingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$setRatingHash,
          dependencies: SetRatingFamily._dependencies,
          allTransitiveDependencies: SetRatingFamily._allTransitiveDependencies,
          request: request,
        );

  SetRatingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final SetRatingRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SetRatingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SetRatingProvider._internal(
        (ref) => create(ref as SetRatingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SetRatingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetRatingProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetRatingRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  SetRatingRequest get request;
}

class _SetRatingProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SetRatingRef {
  _SetRatingProviderElement(super.provider);

  @override
  SetRatingRequest get request => (origin as SetRatingProvider).request;
}

String _$scrobbleHash() => r'3c762d3ee186a7ccb805c569c8ca7194d2b848b9';

/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
///
/// Copied from [scrobble].
@ProviderFor(scrobble)
const scrobbleProvider = ScrobbleFamily();

/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
///
/// Copied from [scrobble].
class ScrobbleFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/scrobble Since 1.5.0
  /// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
  /// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file to scrobble.
  /// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
  /// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
  ///
  /// Copied from [scrobble].
  const ScrobbleFamily();

  /// http://your-server/rest/scrobble Since 1.5.0
  /// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
  /// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file to scrobble.
  /// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
  /// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
  ///
  /// Copied from [scrobble].
  ScrobbleProvider call(
    ScrobbleRequest request,
  ) {
    return ScrobbleProvider(
      request,
    );
  }

  @override
  ScrobbleProvider getProviderOverride(
    covariant ScrobbleProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'scrobbleProvider';
}

/// http://your-server/rest/scrobble Since 1.5.0
/// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
/// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
/// Returns an empty <subsonic-response> element on success.
/// @param id A string which uniquely identifies the file to scrobble.
/// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
/// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
///
/// Copied from [scrobble].
class ScrobbleProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/scrobble Since 1.5.0
  /// Registers the local playback of one or more media files. Typically used when playing media that is cached on the client. This operation includes the following:
  /// Since 1.8.0 you may specify multiple id (and optionally time) parameters to scrobble multiple files.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id A string which uniquely identifies the file to scrobble.
  /// @param time (Since 1.8.0) The time (in milliseconds since 1 Jan 1970) at which the song was listened to.
  /// @param submission Default(True) Whether this is a "submission" or a "now playing" notification.
  ///
  /// Copied from [scrobble].
  ScrobbleProvider(
    ScrobbleRequest request,
  ) : this._internal(
          (ref) => scrobble(
            ref as ScrobbleRef,
            request,
          ),
          from: scrobbleProvider,
          name: r'scrobbleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$scrobbleHash,
          dependencies: ScrobbleFamily._dependencies,
          allTransitiveDependencies: ScrobbleFamily._allTransitiveDependencies,
          request: request,
        );

  ScrobbleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final ScrobbleRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(ScrobbleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ScrobbleProvider._internal(
        (ref) => create(ref as ScrobbleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _ScrobbleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ScrobbleProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ScrobbleRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  ScrobbleRequest get request;
}

class _ScrobbleProviderElement
    extends AutoDisposeFutureProviderElement<Response> with ScrobbleRef {
  _ScrobbleProviderElement(super.provider);

  @override
  ScrobbleRequest get request => (origin as ScrobbleProvider).request;
}

String _$getSharesHash() => r'663ec7b57320c309a470cd940ef97e621475c036';

/// http://your-server/rest/getShares Since 1.6.0
/// Returns information about shared media this user is allowed to manage. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <shares> element on success. Example.
///
/// Copied from [getShares].
@ProviderFor(getShares)
final getSharesProvider = AutoDisposeFutureProvider<Response>.internal(
  getShares,
  name: r'getSharesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getSharesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSharesRef = AutoDisposeFutureProviderRef<Response>;
String _$createShareHash() => r'c39eddad2dfc6206503fb63c2fb5e823966a91aa';

/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
///
/// Copied from [createShare].
@ProviderFor(createShare)
const createShareProvider = CreateShareFamily();

/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
///
/// Copied from [createShare].
class CreateShareFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createShare Since 1.6.0
  /// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
  /// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
  /// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970.
  ///
  /// Copied from [createShare].
  const CreateShareFamily();

  /// http://your-server/rest/createShare Since 1.6.0
  /// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
  /// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
  /// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970.
  ///
  /// Copied from [createShare].
  CreateShareProvider call(
    CreateShareRequest request,
  ) {
    return CreateShareProvider(
      request,
    );
  }

  @override
  CreateShareProvider getProviderOverride(
    covariant CreateShareProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createShareProvider';
}

/// http://your-server/rest/createShare Since 1.6.0
/// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
/// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
/// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970.
///
/// Copied from [createShare].
class CreateShareProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createShare Since 1.6.0
  /// Creates a public URL that can be used by anyone to stream music or video from the Subsonic server. The URL is short and suitable for posting on Facebook, Twitter etc. Note: The user must be authorized to share (see Settings > Users > User is allowed to share files with anyone).
  /// Returns a <subsonic-response> element with a nested <shares> element on success, which in turns contains a single <share> element for the newly created share. Example.
  /// @param id ID of a song, album or video to share. Use one id parameter for each entry to share.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970.
  ///
  /// Copied from [createShare].
  CreateShareProvider(
    CreateShareRequest request,
  ) : this._internal(
          (ref) => createShare(
            ref as CreateShareRef,
            request,
          ),
          from: createShareProvider,
          name: r'createShareProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createShareHash,
          dependencies: CreateShareFamily._dependencies,
          allTransitiveDependencies:
              CreateShareFamily._allTransitiveDependencies,
          request: request,
        );

  CreateShareProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreateShareRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateShareRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateShareProvider._internal(
        (ref) => create(ref as CreateShareRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateShareProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateShareProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateShareRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  CreateShareRequest get request;
}

class _CreateShareProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreateShareRef {
  _CreateShareProviderElement(super.provider);

  @override
  CreateShareRequest get request => (origin as CreateShareProvider).request;
}

String _$updateShareHash() => r'11fa55cc93fbc4f5911753479ec7a590f6dac138';

/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
///
/// Copied from [updateShare].
@ProviderFor(updateShare)
const updateShareProvider = UpdateShareFamily();

/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
///
/// Copied from [updateShare].
class UpdateShareFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updateShare Since 1.6.0
  /// Updates the description and/or expiration date for an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to update.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
  ///
  /// Copied from [updateShare].
  const UpdateShareFamily();

  /// http://your-server/rest/updateShare Since 1.6.0
  /// Updates the description and/or expiration date for an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to update.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
  ///
  /// Copied from [updateShare].
  UpdateShareProvider call(
    UpdateShareRequest request,
  ) {
    return UpdateShareProvider(
      request,
    );
  }

  @override
  UpdateShareProvider getProviderOverride(
    covariant UpdateShareProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateShareProvider';
}

/// http://your-server/rest/updateShare Since 1.6.0
/// Updates the description and/or expiration date for an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to update.
/// @param description A user-defined description that will be displayed to people visiting the shared media.
/// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
///
/// Copied from [updateShare].
class UpdateShareProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updateShare Since 1.6.0
  /// Updates the description and/or expiration date for an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to update.
  /// @param description A user-defined description that will be displayed to people visiting the shared media.
  /// @param expires The time at which the share expires. Given as milliseconds since 1970, or zero to remove the expiration.
  ///
  /// Copied from [updateShare].
  UpdateShareProvider(
    UpdateShareRequest request,
  ) : this._internal(
          (ref) => updateShare(
            ref as UpdateShareRef,
            request,
          ),
          from: updateShareProvider,
          name: r'updateShareProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateShareHash,
          dependencies: UpdateShareFamily._dependencies,
          allTransitiveDependencies:
              UpdateShareFamily._allTransitiveDependencies,
          request: request,
        );

  UpdateShareProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final UpdateShareRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdateShareRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateShareProvider._internal(
        (ref) => create(ref as UpdateShareRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdateShareProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateShareProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateShareRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  UpdateShareRequest get request;
}

class _UpdateShareProviderElement
    extends AutoDisposeFutureProviderElement<Response> with UpdateShareRef {
  _UpdateShareProviderElement(super.provider);

  @override
  UpdateShareRequest get request => (origin as UpdateShareProvider).request;
}

String _$deleteShareHash() => r'9af584bb7224de68c98f33e7ccc3dca2b1e1831e';

/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
///
/// Copied from [deleteShare].
@ProviderFor(deleteShare)
const deleteShareProvider = DeleteShareFamily();

/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
///
/// Copied from [deleteShare].
class DeleteShareFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteShare Since 1.6.0
  /// Deletes an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to delete.
  ///
  /// Copied from [deleteShare].
  const DeleteShareFamily();

  /// http://your-server/rest/deleteShare Since 1.6.0
  /// Deletes an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to delete.
  ///
  /// Copied from [deleteShare].
  DeleteShareProvider call(
    DeleteShareRequest request,
  ) {
    return DeleteShareProvider(
      request,
    );
  }

  @override
  DeleteShareProvider getProviderOverride(
    covariant DeleteShareProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteShareProvider';
}

/// http://your-server/rest/deleteShare Since 1.6.0
/// Deletes an existing share.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the share to delete.
///
/// Copied from [deleteShare].
class DeleteShareProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteShare Since 1.6.0
  /// Deletes an existing share.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the share to delete.
  ///
  /// Copied from [deleteShare].
  DeleteShareProvider(
    DeleteShareRequest request,
  ) : this._internal(
          (ref) => deleteShare(
            ref as DeleteShareRef,
            request,
          ),
          from: deleteShareProvider,
          name: r'deleteShareProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteShareHash,
          dependencies: DeleteShareFamily._dependencies,
          allTransitiveDependencies:
              DeleteShareFamily._allTransitiveDependencies,
          request: request,
        );

  DeleteShareProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeleteShareRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteShareRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteShareProvider._internal(
        (ref) => create(ref as DeleteShareRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteShareProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteShareProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteShareRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeleteShareRequest get request;
}

class _DeleteShareProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeleteShareRef {
  _DeleteShareProviderElement(super.provider);

  @override
  DeleteShareRequest get request => (origin as DeleteShareProvider).request;
}

String _$getPodcastsHash() => r'86cc4391fe4944a3a94a65fc145ac25bf4f702fe';

/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
///
/// Copied from [getPodcasts].
@ProviderFor(getPodcasts)
const getPodcastsProvider = GetPodcastsFamily();

/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
///
/// Copied from [getPodcasts].
class GetPodcastsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getPodcasts Since 1.6.0
  /// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
  /// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
  /// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
  /// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
  ///
  /// Copied from [getPodcasts].
  const GetPodcastsFamily();

  /// http://your-server/rest/getPodcasts Since 1.6.0
  /// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
  /// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
  /// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
  /// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
  ///
  /// Copied from [getPodcasts].
  GetPodcastsProvider call(
    GetPodcastsRequest request,
  ) {
    return GetPodcastsProvider(
      request,
    );
  }

  @override
  GetPodcastsProvider getProviderOverride(
    covariant GetPodcastsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPodcastsProvider';
}

/// http://your-server/rest/getPodcasts Since 1.6.0
/// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
/// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
/// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
/// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
///
/// Copied from [getPodcasts].
class GetPodcastsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getPodcasts Since 1.6.0
  /// Returns all Podcast channels the server subscribes to, and (optionally) their episodes. This method can also be used to return details for only one channel - refer to the id parameter. A typical use case for this method would be to first retrieve all channels without episodes, and then retrieve all episodes for the single channel the user selects.
  /// Returns a <subsonic-response> element with a nested <podcasts> element on success. Example.
  /// @param includeEpisodes Default(true) (Since 1.9.0) Whether to include Podcast episodes in the returned result.
  /// @param id (Since 1.9.0) If specified, only return the Podcast channel with this ID.
  ///
  /// Copied from [getPodcasts].
  GetPodcastsProvider(
    GetPodcastsRequest request,
  ) : this._internal(
          (ref) => getPodcasts(
            ref as GetPodcastsRef,
            request,
          ),
          from: getPodcastsProvider,
          name: r'getPodcastsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPodcastsHash,
          dependencies: GetPodcastsFamily._dependencies,
          allTransitiveDependencies:
              GetPodcastsFamily._allTransitiveDependencies,
          request: request,
        );

  GetPodcastsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetPodcastsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetPodcastsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPodcastsProvider._internal(
        (ref) => create(ref as GetPodcastsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetPodcastsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPodcastsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPodcastsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetPodcastsRequest get request;
}

class _GetPodcastsProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetPodcastsRef {
  _GetPodcastsProviderElement(super.provider);

  @override
  GetPodcastsRequest get request => (origin as GetPodcastsProvider).request;
}

String _$getNewestPodcastsHash() => r'fbbc6066650605873c1cbced76da28928dfde672';

/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
///
/// Copied from [getNewestPodcasts].
@ProviderFor(getNewestPodcasts)
const getNewestPodcastsProvider = GetNewestPodcastsFamily();

/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
///
/// Copied from [getNewestPodcasts].
class GetNewestPodcastsFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getNewestPodcasts Since 1.13.0
  /// Returns the most recently published Podcast episodes.
  /// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
  /// @param count Default(20) The maximum number of episodes to return.
  ///
  /// Copied from [getNewestPodcasts].
  const GetNewestPodcastsFamily();

  /// http://your-server/rest/getNewestPodcasts Since 1.13.0
  /// Returns the most recently published Podcast episodes.
  /// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
  /// @param count Default(20) The maximum number of episodes to return.
  ///
  /// Copied from [getNewestPodcasts].
  GetNewestPodcastsProvider call(
    GetNewestPodcastsRequest request,
  ) {
    return GetNewestPodcastsProvider(
      request,
    );
  }

  @override
  GetNewestPodcastsProvider getProviderOverride(
    covariant GetNewestPodcastsProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getNewestPodcastsProvider';
}

/// http://your-server/rest/getNewestPodcasts Since 1.13.0
/// Returns the most recently published Podcast episodes.
/// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
/// @param count Default(20) The maximum number of episodes to return.
///
/// Copied from [getNewestPodcasts].
class GetNewestPodcastsProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getNewestPodcasts Since 1.13.0
  /// Returns the most recently published Podcast episodes.
  /// Returns a <subsonic-response> element with a nested <newestPodcasts> element on success. Example.
  /// @param count Default(20) The maximum number of episodes to return.
  ///
  /// Copied from [getNewestPodcasts].
  GetNewestPodcastsProvider(
    GetNewestPodcastsRequest request,
  ) : this._internal(
          (ref) => getNewestPodcasts(
            ref as GetNewestPodcastsRef,
            request,
          ),
          from: getNewestPodcastsProvider,
          name: r'getNewestPodcastsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getNewestPodcastsHash,
          dependencies: GetNewestPodcastsFamily._dependencies,
          allTransitiveDependencies:
              GetNewestPodcastsFamily._allTransitiveDependencies,
          request: request,
        );

  GetNewestPodcastsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetNewestPodcastsRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetNewestPodcastsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetNewestPodcastsProvider._internal(
        (ref) => create(ref as GetNewestPodcastsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetNewestPodcastsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetNewestPodcastsProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetNewestPodcastsRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetNewestPodcastsRequest get request;
}

class _GetNewestPodcastsProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with GetNewestPodcastsRef {
  _GetNewestPodcastsProviderElement(super.provider);

  @override
  GetNewestPodcastsRequest get request =>
      (origin as GetNewestPodcastsProvider).request;
}

String _$refreshPodcastsHash() => r'42f8f5ff666455a2678e13c79b86d4de45b392dd';

/// http://your-server/rest/refreshPodcasts Since 1.9.0
/// Requests the server to check for new Podcast episodes. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
///
/// Copied from [refreshPodcasts].
@ProviderFor(refreshPodcasts)
final refreshPodcastsProvider = AutoDisposeFutureProvider<Response>.internal(
  refreshPodcasts,
  name: r'refreshPodcastsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$refreshPodcastsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RefreshPodcastsRef = AutoDisposeFutureProviderRef<Response>;
String _$createPodcastChannelHash() =>
    r'6370dee665131c670d1d463eaf47217ba1f3b1bc';

/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
///
/// Copied from [createPodcastChannel].
@ProviderFor(createPodcastChannel)
const createPodcastChannelProvider = CreatePodcastChannelFamily();

/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
///
/// Copied from [createPodcastChannel].
class CreatePodcastChannelFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createPodcastChannel Since 1.9.0
  /// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param url The URL of the Podcast to add.
  ///
  /// Copied from [createPodcastChannel].
  const CreatePodcastChannelFamily();

  /// http://your-server/rest/createPodcastChannel Since 1.9.0
  /// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param url The URL of the Podcast to add.
  ///
  /// Copied from [createPodcastChannel].
  CreatePodcastChannelProvider call(
    CreatePodcastChannelRequest request,
  ) {
    return CreatePodcastChannelProvider(
      request,
    );
  }

  @override
  CreatePodcastChannelProvider getProviderOverride(
    covariant CreatePodcastChannelProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createPodcastChannelProvider';
}

/// http://your-server/rest/createPodcastChannel Since 1.9.0
/// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param url The URL of the Podcast to add.
///
/// Copied from [createPodcastChannel].
class CreatePodcastChannelProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createPodcastChannel Since 1.9.0
  /// Adds a new Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param url The URL of the Podcast to add.
  ///
  /// Copied from [createPodcastChannel].
  CreatePodcastChannelProvider(
    CreatePodcastChannelRequest request,
  ) : this._internal(
          (ref) => createPodcastChannel(
            ref as CreatePodcastChannelRef,
            request,
          ),
          from: createPodcastChannelProvider,
          name: r'createPodcastChannelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createPodcastChannelHash,
          dependencies: CreatePodcastChannelFamily._dependencies,
          allTransitiveDependencies:
              CreatePodcastChannelFamily._allTransitiveDependencies,
          request: request,
        );

  CreatePodcastChannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreatePodcastChannelRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreatePodcastChannelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreatePodcastChannelProvider._internal(
        (ref) => create(ref as CreatePodcastChannelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreatePodcastChannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreatePodcastChannelProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreatePodcastChannelRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  CreatePodcastChannelRequest get request;
}

class _CreatePodcastChannelProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with CreatePodcastChannelRef {
  _CreatePodcastChannelProviderElement(super.provider);

  @override
  CreatePodcastChannelRequest get request =>
      (origin as CreatePodcastChannelProvider).request;
}

String _$deletePodcastChannelHash() =>
    r'887c4b64714abee8315d31b9e156f18b820f38b1';

/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
///
/// Copied from [deletePodcastChannel].
@ProviderFor(deletePodcastChannel)
const deletePodcastChannelProvider = DeletePodcastChannelFamily();

/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
///
/// Copied from [deletePodcastChannel].
class DeletePodcastChannelFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deletePodcastChannel Since 1.9.0
  /// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast channel to delete.
  ///
  /// Copied from [deletePodcastChannel].
  const DeletePodcastChannelFamily();

  /// http://your-server/rest/deletePodcastChannel Since 1.9.0
  /// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast channel to delete.
  ///
  /// Copied from [deletePodcastChannel].
  DeletePodcastChannelProvider call(
    DeletePodcastChannelRequest request,
  ) {
    return DeletePodcastChannelProvider(
      request,
    );
  }

  @override
  DeletePodcastChannelProvider getProviderOverride(
    covariant DeletePodcastChannelProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deletePodcastChannelProvider';
}

/// http://your-server/rest/deletePodcastChannel Since 1.9.0
/// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast channel to delete.
///
/// Copied from [deletePodcastChannel].
class DeletePodcastChannelProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deletePodcastChannel Since 1.9.0
  /// Deletes a Podcast channel. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast channel to delete.
  ///
  /// Copied from [deletePodcastChannel].
  DeletePodcastChannelProvider(
    DeletePodcastChannelRequest request,
  ) : this._internal(
          (ref) => deletePodcastChannel(
            ref as DeletePodcastChannelRef,
            request,
          ),
          from: deletePodcastChannelProvider,
          name: r'deletePodcastChannelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePodcastChannelHash,
          dependencies: DeletePodcastChannelFamily._dependencies,
          allTransitiveDependencies:
              DeletePodcastChannelFamily._allTransitiveDependencies,
          request: request,
        );

  DeletePodcastChannelProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeletePodcastChannelRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeletePodcastChannelRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePodcastChannelProvider._internal(
        (ref) => create(ref as DeletePodcastChannelRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeletePodcastChannelProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePodcastChannelProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePodcastChannelRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeletePodcastChannelRequest get request;
}

class _DeletePodcastChannelProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DeletePodcastChannelRef {
  _DeletePodcastChannelProviderElement(super.provider);

  @override
  DeletePodcastChannelRequest get request =>
      (origin as DeletePodcastChannelProvider).request;
}

String _$deletePodcastEpisodeHash() =>
    r'032943680eaa0cdc1cb0171be42e6f59642d4e04';

/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
///
/// Copied from [deletePodcastEpisode].
@ProviderFor(deletePodcastEpisode)
const deletePodcastEpisodeProvider = DeletePodcastEpisodeFamily();

/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
///
/// Copied from [deletePodcastEpisode].
class DeletePodcastEpisodeFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deletePodcastEpisode Since 1.9.0
  /// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to delete.
  ///
  /// Copied from [deletePodcastEpisode].
  const DeletePodcastEpisodeFamily();

  /// http://your-server/rest/deletePodcastEpisode Since 1.9.0
  /// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to delete.
  ///
  /// Copied from [deletePodcastEpisode].
  DeletePodcastEpisodeProvider call(
    DeletePodcastEpisodeRequest request,
  ) {
    return DeletePodcastEpisodeProvider(
      request,
    );
  }

  @override
  DeletePodcastEpisodeProvider getProviderOverride(
    covariant DeletePodcastEpisodeProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deletePodcastEpisodeProvider';
}

/// http://your-server/rest/deletePodcastEpisode Since 1.9.0
/// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to delete.
///
/// Copied from [deletePodcastEpisode].
class DeletePodcastEpisodeProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deletePodcastEpisode Since 1.9.0
  /// Deletes a Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to delete.
  ///
  /// Copied from [deletePodcastEpisode].
  DeletePodcastEpisodeProvider(
    DeletePodcastEpisodeRequest request,
  ) : this._internal(
          (ref) => deletePodcastEpisode(
            ref as DeletePodcastEpisodeRef,
            request,
          ),
          from: deletePodcastEpisodeProvider,
          name: r'deletePodcastEpisodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deletePodcastEpisodeHash,
          dependencies: DeletePodcastEpisodeFamily._dependencies,
          allTransitiveDependencies:
              DeletePodcastEpisodeFamily._allTransitiveDependencies,
          request: request,
        );

  DeletePodcastEpisodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeletePodcastEpisodeRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeletePodcastEpisodeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeletePodcastEpisodeProvider._internal(
        (ref) => create(ref as DeletePodcastEpisodeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeletePodcastEpisodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeletePodcastEpisodeProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeletePodcastEpisodeRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeletePodcastEpisodeRequest get request;
}

class _DeletePodcastEpisodeProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DeletePodcastEpisodeRef {
  _DeletePodcastEpisodeProviderElement(super.provider);

  @override
  DeletePodcastEpisodeRequest get request =>
      (origin as DeletePodcastEpisodeProvider).request;
}

String _$downloadPodcastEpisodeHash() =>
    r'3e2ec503658496672099ab8491bf42c39ac9ba04';

/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
///
/// Copied from [downloadPodcastEpisode].
@ProviderFor(downloadPodcastEpisode)
const downloadPodcastEpisodeProvider = DownloadPodcastEpisodeFamily();

/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
///
/// Copied from [downloadPodcastEpisode].
class DownloadPodcastEpisodeFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
  /// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to download.
  ///
  /// Copied from [downloadPodcastEpisode].
  const DownloadPodcastEpisodeFamily();

  /// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
  /// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to download.
  ///
  /// Copied from [downloadPodcastEpisode].
  DownloadPodcastEpisodeProvider call(
    DownloadPodcastEpisodeRequest request,
  ) {
    return DownloadPodcastEpisodeProvider(
      request,
    );
  }

  @override
  DownloadPodcastEpisodeProvider getProviderOverride(
    covariant DownloadPodcastEpisodeProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'downloadPodcastEpisodeProvider';
}

/// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
/// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID of the Podcast episode to download.
///
/// Copied from [downloadPodcastEpisode].
class DownloadPodcastEpisodeProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/downloadPodcastEpisode Since 1.9.0
  /// Request the server to start downloading a given Podcast episode. Note: The user must be authorized for Podcast administration (see Settings > Users > User is allowed to administrate Podcasts).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID of the Podcast episode to download.
  ///
  /// Copied from [downloadPodcastEpisode].
  DownloadPodcastEpisodeProvider(
    DownloadPodcastEpisodeRequest request,
  ) : this._internal(
          (ref) => downloadPodcastEpisode(
            ref as DownloadPodcastEpisodeRef,
            request,
          ),
          from: downloadPodcastEpisodeProvider,
          name: r'downloadPodcastEpisodeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$downloadPodcastEpisodeHash,
          dependencies: DownloadPodcastEpisodeFamily._dependencies,
          allTransitiveDependencies:
              DownloadPodcastEpisodeFamily._allTransitiveDependencies,
          request: request,
        );

  DownloadPodcastEpisodeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DownloadPodcastEpisodeRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DownloadPodcastEpisodeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DownloadPodcastEpisodeProvider._internal(
        (ref) => create(ref as DownloadPodcastEpisodeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DownloadPodcastEpisodeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DownloadPodcastEpisodeProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DownloadPodcastEpisodeRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DownloadPodcastEpisodeRequest get request;
}

class _DownloadPodcastEpisodeProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DownloadPodcastEpisodeRef {
  _DownloadPodcastEpisodeProviderElement(super.provider);

  @override
  DownloadPodcastEpisodeRequest get request =>
      (origin as DownloadPodcastEpisodeProvider).request;
}

String _$jukeboxControlHash() => r'c6f32b086bc49b6a273ad39a35fca0e149f8a359';

/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
///
/// Copied from [jukeboxControl].
@ProviderFor(jukeboxControl)
const jukeboxControlProvider = JukeboxControlFamily();

/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
///
/// Copied from [jukeboxControl].
class JukeboxControlFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/jukeboxControl Since 1.2.0
  /// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
  /// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
  /// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
  /// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
  /// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
  /// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
  /// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
  ///
  /// Copied from [jukeboxControl].
  const JukeboxControlFamily();

  /// http://your-server/rest/jukeboxControl Since 1.2.0
  /// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
  /// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
  /// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
  /// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
  /// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
  /// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
  /// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
  ///
  /// Copied from [jukeboxControl].
  JukeboxControlProvider call(
    JukeboxControlRequest request,
  ) {
    return JukeboxControlProvider(
      request,
    );
  }

  @override
  JukeboxControlProvider getProviderOverride(
    covariant JukeboxControlProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'jukeboxControlProvider';
}

/// http://your-server/rest/jukeboxControl Since 1.2.0
/// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
/// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
/// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
/// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
/// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
/// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
/// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
///
/// Copied from [jukeboxControl].
class JukeboxControlProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/jukeboxControl Since 1.2.0
  /// Controls the jukebox, i.e., playback directly on the server's audio hardware. Note: The user must be authorized to control the jukebox (see Settings > Users > User is allowed to play files in jukebox mode).
  /// Returns a <jukeboxStatus> element on success, unless the get action is used, in which case a nested <jukeboxPlaylist> element is returned. Example 1. Example 2.
  /// @param action The operation to perform. Must be one of: get, status (since 1.7.0), set (since 1.7.0), start, stop, skip, add, clear, remove, shuffle, setGain
  /// @param index Used by skip and remove. Zero-based index of the song to skip to or remove.
  /// @param offset (Since 1.7.0) Used by skip. Start playing this many seconds into the track.
  /// @param id Used by add and set. ID of song to add to the jukebox playlist. Use multiple id parameters to add many songs in the same request. (set is similar to a clear followed by a add, but will not change the currently playing track.)
  /// @param gain Used by setGain to control the playback volume. A float value between 0.0 and 1.0.
  ///
  /// Copied from [jukeboxControl].
  JukeboxControlProvider(
    JukeboxControlRequest request,
  ) : this._internal(
          (ref) => jukeboxControl(
            ref as JukeboxControlRef,
            request,
          ),
          from: jukeboxControlProvider,
          name: r'jukeboxControlProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$jukeboxControlHash,
          dependencies: JukeboxControlFamily._dependencies,
          allTransitiveDependencies:
              JukeboxControlFamily._allTransitiveDependencies,
          request: request,
        );

  JukeboxControlProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final JukeboxControlRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(JukeboxControlRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: JukeboxControlProvider._internal(
        (ref) => create(ref as JukeboxControlRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _JukeboxControlProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is JukeboxControlProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin JukeboxControlRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  JukeboxControlRequest get request;
}

class _JukeboxControlProviderElement
    extends AutoDisposeFutureProviderElement<Response> with JukeboxControlRef {
  _JukeboxControlProviderElement(super.provider);

  @override
  JukeboxControlRequest get request =>
      (origin as JukeboxControlProvider).request;
}

String _$getInternetRadioStationsHash() =>
    r'f3f37f45b94fcb93f71938f9627893e6b278b406';

/// http://your-server/rest/getInternetRadioStations Since 1.9.0
/// Returns all internet radio stations. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <internetRadioStations> element on success. Example.
///
/// Copied from [getInternetRadioStations].
@ProviderFor(getInternetRadioStations)
final getInternetRadioStationsProvider =
    AutoDisposeFutureProvider<Response>.internal(
  getInternetRadioStations,
  name: r'getInternetRadioStationsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getInternetRadioStationsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetInternetRadioStationsRef = AutoDisposeFutureProviderRef<Response>;
String _$createInternetRadioStationHash() =>
    r'd8a984cd628c3a9b98a426eabf0f4a8272e338ed';

/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [createInternetRadioStation].
@ProviderFor(createInternetRadioStation)
const createInternetRadioStationProvider = CreateInternetRadioStationFamily();

/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [createInternetRadioStation].
class CreateInternetRadioStationFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createInternetRadioStation Since 1.16.0
  /// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [createInternetRadioStation].
  const CreateInternetRadioStationFamily();

  /// http://your-server/rest/createInternetRadioStation Since 1.16.0
  /// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [createInternetRadioStation].
  CreateInternetRadioStationProvider call(
    CreateInternetRadioStationRequest request,
  ) {
    return CreateInternetRadioStationProvider(
      request,
    );
  }

  @override
  CreateInternetRadioStationProvider getProviderOverride(
    covariant CreateInternetRadioStationProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createInternetRadioStationProvider';
}

/// http://your-server/rest/createInternetRadioStation Since 1.16.0
/// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [createInternetRadioStation].
class CreateInternetRadioStationProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createInternetRadioStation Since 1.16.0
  /// Adds a new internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [createInternetRadioStation].
  CreateInternetRadioStationProvider(
    CreateInternetRadioStationRequest request,
  ) : this._internal(
          (ref) => createInternetRadioStation(
            ref as CreateInternetRadioStationRef,
            request,
          ),
          from: createInternetRadioStationProvider,
          name: r'createInternetRadioStationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createInternetRadioStationHash,
          dependencies: CreateInternetRadioStationFamily._dependencies,
          allTransitiveDependencies:
              CreateInternetRadioStationFamily._allTransitiveDependencies,
          request: request,
        );

  CreateInternetRadioStationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreateInternetRadioStationRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateInternetRadioStationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateInternetRadioStationProvider._internal(
        (ref) => create(ref as CreateInternetRadioStationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateInternetRadioStationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateInternetRadioStationProvider &&
        other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateInternetRadioStationRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  CreateInternetRadioStationRequest get request;
}

class _CreateInternetRadioStationProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with CreateInternetRadioStationRef {
  _CreateInternetRadioStationProviderElement(super.provider);

  @override
  CreateInternetRadioStationRequest get request =>
      (origin as CreateInternetRadioStationProvider).request;
}

String _$updateInternetRadioStationHash() =>
    r'6c0de5f1f2d516714c7289c944876d5772746f34';

/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [updateInternetRadioStation].
@ProviderFor(updateInternetRadioStation)
const updateInternetRadioStationProvider = UpdateInternetRadioStationFamily();

/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [updateInternetRadioStation].
class UpdateInternetRadioStationFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updateInternetRadioStation Since 1.16.0
  /// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [updateInternetRadioStation].
  const UpdateInternetRadioStationFamily();

  /// http://your-server/rest/updateInternetRadioStation Since 1.16.0
  /// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [updateInternetRadioStation].
  UpdateInternetRadioStationProvider call(
    UpdateInternetRadioStationRequest request,
  ) {
    return UpdateInternetRadioStationProvider(
      request,
    );
  }

  @override
  UpdateInternetRadioStationProvider getProviderOverride(
    covariant UpdateInternetRadioStationProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateInternetRadioStationProvider';
}

/// http://your-server/rest/updateInternetRadioStation Since 1.16.0
/// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
/// @param streamUrl The stream URL for the station.
/// @param name The user-defined name for the station.
/// @param homepageUrl The home page URL for the station.
///
/// Copied from [updateInternetRadioStation].
class UpdateInternetRadioStationProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updateInternetRadioStation Since 1.16.0
  /// Updates an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  /// @param streamUrl The stream URL for the station.
  /// @param name The user-defined name for the station.
  /// @param homepageUrl The home page URL for the station.
  ///
  /// Copied from [updateInternetRadioStation].
  UpdateInternetRadioStationProvider(
    UpdateInternetRadioStationRequest request,
  ) : this._internal(
          (ref) => updateInternetRadioStation(
            ref as UpdateInternetRadioStationRef,
            request,
          ),
          from: updateInternetRadioStationProvider,
          name: r'updateInternetRadioStationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateInternetRadioStationHash,
          dependencies: UpdateInternetRadioStationFamily._dependencies,
          allTransitiveDependencies:
              UpdateInternetRadioStationFamily._allTransitiveDependencies,
          request: request,
        );

  UpdateInternetRadioStationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final UpdateInternetRadioStationRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdateInternetRadioStationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateInternetRadioStationProvider._internal(
        (ref) => create(ref as UpdateInternetRadioStationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdateInternetRadioStationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateInternetRadioStationProvider &&
        other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateInternetRadioStationRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  UpdateInternetRadioStationRequest get request;
}

class _UpdateInternetRadioStationProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with UpdateInternetRadioStationRef {
  _UpdateInternetRadioStationProviderElement(super.provider);

  @override
  UpdateInternetRadioStationRequest get request =>
      (origin as UpdateInternetRadioStationProvider).request;
}

String _$deleteInternetRadioStationHash() =>
    r'2eda83eb8571e9ec118f974cfdcd71ecd7847710';

/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
///
/// Copied from [deleteInternetRadioStation].
@ProviderFor(deleteInternetRadioStation)
const deleteInternetRadioStationProvider = DeleteInternetRadioStationFamily();

/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
///
/// Copied from [deleteInternetRadioStation].
class DeleteInternetRadioStationFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
  /// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  ///
  /// Copied from [deleteInternetRadioStation].
  const DeleteInternetRadioStationFamily();

  /// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
  /// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  ///
  /// Copied from [deleteInternetRadioStation].
  DeleteInternetRadioStationProvider call(
    DeleteInternetRadioStationRequest request,
  ) {
    return DeleteInternetRadioStationProvider(
      request,
    );
  }

  @override
  DeleteInternetRadioStationProvider getProviderOverride(
    covariant DeleteInternetRadioStationProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteInternetRadioStationProvider';
}

/// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
/// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
/// Returns an empty <subsonic-response> element on success.
/// @param id The ID for the station.
///
/// Copied from [deleteInternetRadioStation].
class DeleteInternetRadioStationProvider
    extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteInternetRadioStation Since 1.16.0
  /// Deletes an existing internet radio station. Only users with admin privileges are allowed to call this method.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id The ID for the station.
  ///
  /// Copied from [deleteInternetRadioStation].
  DeleteInternetRadioStationProvider(
    DeleteInternetRadioStationRequest request,
  ) : this._internal(
          (ref) => deleteInternetRadioStation(
            ref as DeleteInternetRadioStationRef,
            request,
          ),
          from: deleteInternetRadioStationProvider,
          name: r'deleteInternetRadioStationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteInternetRadioStationHash,
          dependencies: DeleteInternetRadioStationFamily._dependencies,
          allTransitiveDependencies:
              DeleteInternetRadioStationFamily._allTransitiveDependencies,
          request: request,
        );

  DeleteInternetRadioStationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeleteInternetRadioStationRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteInternetRadioStationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteInternetRadioStationProvider._internal(
        (ref) => create(ref as DeleteInternetRadioStationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteInternetRadioStationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteInternetRadioStationProvider &&
        other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteInternetRadioStationRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeleteInternetRadioStationRequest get request;
}

class _DeleteInternetRadioStationProviderElement
    extends AutoDisposeFutureProviderElement<Response>
    with DeleteInternetRadioStationRef {
  _DeleteInternetRadioStationProviderElement(super.provider);

  @override
  DeleteInternetRadioStationRequest get request =>
      (origin as DeleteInternetRadioStationProvider).request;
}

String _$getChatMessagesHash() => r'ade647159b40492525ba4698c83fd9e13e07005a';

/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
///
/// Copied from [getChatMessages].
@ProviderFor(getChatMessages)
const getChatMessagesProvider = GetChatMessagesFamily();

/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
///
/// Copied from [getChatMessages].
class GetChatMessagesFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getChatMessages Since 1.2.0
  /// Returns the current visible (non-expired) chat messages.
  /// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
  /// @param since Only return messages newer than this time (in millis since Jan 1 1970).
  ///
  /// Copied from [getChatMessages].
  const GetChatMessagesFamily();

  /// http://your-server/rest/getChatMessages Since 1.2.0
  /// Returns the current visible (non-expired) chat messages.
  /// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
  /// @param since Only return messages newer than this time (in millis since Jan 1 1970).
  ///
  /// Copied from [getChatMessages].
  GetChatMessagesProvider call(
    GetChatMessagesRequest request,
  ) {
    return GetChatMessagesProvider(
      request,
    );
  }

  @override
  GetChatMessagesProvider getProviderOverride(
    covariant GetChatMessagesProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getChatMessagesProvider';
}

/// http://your-server/rest/getChatMessages Since 1.2.0
/// Returns the current visible (non-expired) chat messages.
/// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
/// @param since Only return messages newer than this time (in millis since Jan 1 1970).
///
/// Copied from [getChatMessages].
class GetChatMessagesProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getChatMessages Since 1.2.0
  /// Returns the current visible (non-expired) chat messages.
  /// Returns a <subsonic-response> element with a nested <chatMessages> element on success. Example.
  /// @param since Only return messages newer than this time (in millis since Jan 1 1970).
  ///
  /// Copied from [getChatMessages].
  GetChatMessagesProvider(
    GetChatMessagesRequest request,
  ) : this._internal(
          (ref) => getChatMessages(
            ref as GetChatMessagesRef,
            request,
          ),
          from: getChatMessagesProvider,
          name: r'getChatMessagesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getChatMessagesHash,
          dependencies: GetChatMessagesFamily._dependencies,
          allTransitiveDependencies:
              GetChatMessagesFamily._allTransitiveDependencies,
          request: request,
        );

  GetChatMessagesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetChatMessagesRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetChatMessagesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetChatMessagesProvider._internal(
        (ref) => create(ref as GetChatMessagesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetChatMessagesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetChatMessagesProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetChatMessagesRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetChatMessagesRequest get request;
}

class _GetChatMessagesProviderElement
    extends AutoDisposeFutureProviderElement<Response> with GetChatMessagesRef {
  _GetChatMessagesProviderElement(super.provider);

  @override
  GetChatMessagesRequest get request =>
      (origin as GetChatMessagesProvider).request;
}

String _$addChatMessageHash() => r'a5bedeab0972cd6435cbaefeba8b5c0d0b64147c';

/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
///
/// Copied from [addChatMessage].
@ProviderFor(addChatMessage)
const addChatMessageProvider = AddChatMessageFamily();

/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
///
/// Copied from [addChatMessage].
class AddChatMessageFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/addChatMessage Since 1.2.0
  /// Adds a message to the chat log.
  /// Returns an empty <subsonic-response> element on success.
  /// @param message The chat message.
  ///
  /// Copied from [addChatMessage].
  const AddChatMessageFamily();

  /// http://your-server/rest/addChatMessage Since 1.2.0
  /// Adds a message to the chat log.
  /// Returns an empty <subsonic-response> element on success.
  /// @param message The chat message.
  ///
  /// Copied from [addChatMessage].
  AddChatMessageProvider call(
    AddChatMessageRequest request,
  ) {
    return AddChatMessageProvider(
      request,
    );
  }

  @override
  AddChatMessageProvider getProviderOverride(
    covariant AddChatMessageProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addChatMessageProvider';
}

/// http://your-server/rest/addChatMessage Since 1.2.0
/// Adds a message to the chat log.
/// Returns an empty <subsonic-response> element on success.
/// @param message The chat message.
///
/// Copied from [addChatMessage].
class AddChatMessageProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/addChatMessage Since 1.2.0
  /// Adds a message to the chat log.
  /// Returns an empty <subsonic-response> element on success.
  /// @param message The chat message.
  ///
  /// Copied from [addChatMessage].
  AddChatMessageProvider(
    AddChatMessageRequest request,
  ) : this._internal(
          (ref) => addChatMessage(
            ref as AddChatMessageRef,
            request,
          ),
          from: addChatMessageProvider,
          name: r'addChatMessageProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addChatMessageHash,
          dependencies: AddChatMessageFamily._dependencies,
          allTransitiveDependencies:
              AddChatMessageFamily._allTransitiveDependencies,
          request: request,
        );

  AddChatMessageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final AddChatMessageRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(AddChatMessageRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddChatMessageProvider._internal(
        (ref) => create(ref as AddChatMessageRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _AddChatMessageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddChatMessageProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AddChatMessageRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  AddChatMessageRequest get request;
}

class _AddChatMessageProviderElement
    extends AutoDisposeFutureProviderElement<Response> with AddChatMessageRef {
  _AddChatMessageProviderElement(super.provider);

  @override
  AddChatMessageRequest get request =>
      (origin as AddChatMessageProvider).request;
}

String _$getUserHash() => r'7f43354d3d7b1f0a81dcf919b9053e5fc535c534';

/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
///
/// Copied from [getUser].
@ProviderFor(getUser)
const getUserProvider = GetUserFamily();

/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
///
/// Copied from [getUser].
class GetUserFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/getUser Since 1.3.0
  /// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
  /// Returns a <subsonic-response> element with a nested <user> element on success. Example.
  /// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
  ///
  /// Copied from [getUser].
  const GetUserFamily();

  /// http://your-server/rest/getUser Since 1.3.0
  /// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
  /// Returns a <subsonic-response> element with a nested <user> element on success. Example.
  /// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
  ///
  /// Copied from [getUser].
  GetUserProvider call(
    GetUserRequest request,
  ) {
    return GetUserProvider(
      request,
    );
  }

  @override
  GetUserProvider getProviderOverride(
    covariant GetUserProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getUserProvider';
}

/// http://your-server/rest/getUser Since 1.3.0
/// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
/// Returns a <subsonic-response> element with a nested <user> element on success. Example.
/// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
///
/// Copied from [getUser].
class GetUserProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/getUser Since 1.3.0
  /// Get details about a given user, including which authorization roles and folder access it has. Can be used to enable/disable certain features in the client, such as jukebox control.
  /// Returns a <subsonic-response> element with a nested <user> element on success. Example.
  /// @param username The name of the user to retrieve. You can only retrieve your own user unless you have admin privileges.
  ///
  /// Copied from [getUser].
  GetUserProvider(
    GetUserRequest request,
  ) : this._internal(
          (ref) => getUser(
            ref as GetUserRef,
            request,
          ),
          from: getUserProvider,
          name: r'getUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getUserHash,
          dependencies: GetUserFamily._dependencies,
          allTransitiveDependencies: GetUserFamily._allTransitiveDependencies,
          request: request,
        );

  GetUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final GetUserRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(GetUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetUserProvider._internal(
        (ref) => create(ref as GetUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _GetUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  GetUserRequest get request;
}

class _GetUserProviderElement extends AutoDisposeFutureProviderElement<Response>
    with GetUserRef {
  _GetUserProviderElement(super.provider);

  @override
  GetUserRequest get request => (origin as GetUserProvider).request;
}

String _$getUsersHash() => r'82de4b889bc81d6ac3b267d1b492608c0d37230f';

/// http://your-server/rest/getUsers Since 1.8.0
/// Get details about all users, including which authorization roles and folder access they have. Only users with admin privileges are allowed to call this method.
/// Returns a <subsonic-response> element with a nested <users> element on success. Example.
///
/// Copied from [getUsers].
@ProviderFor(getUsers)
final getUsersProvider = AutoDisposeFutureProvider<Response>.internal(
  getUsers,
  name: r'getUsersProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getUsersHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetUsersRef = AutoDisposeFutureProviderRef<Response>;
String _$createUserHash() => r'f1b6fc5e17df8f525bf1ba3e5d312dfa75fccb7d';

/// http://your-server/rest/createUser Since 1.1.0
/// Creates a new Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the new user.
/// @param password The password of the new user, either in clear text of hex-encoded (see above).
/// @param email The email address of the new user.
/// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
/// @param adminRole Default(false) Whether the user is administrator.
/// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
/// @param streamRole Default(true) Whether the user is allowed to play files.
/// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Default(false) Whether the user is allowed to download files.
/// @param uploadRole Default(false) Whether the user is allowed to upload files.
/// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
/// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
/// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
/// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
///
/// Copied from [createUser].
@ProviderFor(createUser)
const createUserProvider = CreateUserFamily();

/// http://your-server/rest/createUser Since 1.1.0
/// Creates a new Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the new user.
/// @param password The password of the new user, either in clear text of hex-encoded (see above).
/// @param email The email address of the new user.
/// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
/// @param adminRole Default(false) Whether the user is administrator.
/// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
/// @param streamRole Default(true) Whether the user is allowed to play files.
/// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Default(false) Whether the user is allowed to download files.
/// @param uploadRole Default(false) Whether the user is allowed to upload files.
/// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
/// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
/// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
/// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
///
/// Copied from [createUser].
class CreateUserFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createUser Since 1.1.0
  /// Creates a new Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the new user.
  /// @param password The password of the new user, either in clear text of hex-encoded (see above).
  /// @param email The email address of the new user.
  /// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
  /// @param adminRole Default(false) Whether the user is administrator.
  /// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
  /// @param streamRole Default(true) Whether the user is allowed to play files.
  /// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
  /// @param downloadRole Default(false) Whether the user is allowed to download files.
  /// @param uploadRole Default(false) Whether the user is allowed to upload files.
  /// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
  /// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
  /// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
  /// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
  /// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
  /// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
  /// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
  ///
  /// Copied from [createUser].
  const CreateUserFamily();

  /// http://your-server/rest/createUser Since 1.1.0
  /// Creates a new Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the new user.
  /// @param password The password of the new user, either in clear text of hex-encoded (see above).
  /// @param email The email address of the new user.
  /// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
  /// @param adminRole Default(false) Whether the user is administrator.
  /// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
  /// @param streamRole Default(true) Whether the user is allowed to play files.
  /// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
  /// @param downloadRole Default(false) Whether the user is allowed to download files.
  /// @param uploadRole Default(false) Whether the user is allowed to upload files.
  /// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
  /// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
  /// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
  /// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
  /// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
  /// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
  /// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
  ///
  /// Copied from [createUser].
  CreateUserProvider call(
    CreateUserRequest request,
  ) {
    return CreateUserProvider(
      request,
    );
  }

  @override
  CreateUserProvider getProviderOverride(
    covariant CreateUserProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createUserProvider';
}

/// http://your-server/rest/createUser Since 1.1.0
/// Creates a new Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the new user.
/// @param password The password of the new user, either in clear text of hex-encoded (see above).
/// @param email The email address of the new user.
/// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
/// @param adminRole Default(false) Whether the user is administrator.
/// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
/// @param streamRole Default(true) Whether the user is allowed to play files.
/// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Default(false) Whether the user is allowed to download files.
/// @param uploadRole Default(false) Whether the user is allowed to upload files.
/// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
/// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
/// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
/// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
///
/// Copied from [createUser].
class CreateUserProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createUser Since 1.1.0
  /// Creates a new Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the new user.
  /// @param password The password of the new user, either in clear text of hex-encoded (see above).
  /// @param email The email address of the new user.
  /// @param ldapAuthenticated Default(false) Whether the user is authenicated in LDAP.
  /// @param adminRole Default(false) Whether the user is administrator.
  /// @param settingsRole Default(true) Whether the user is allowed to change personal settings and password.
  /// @param streamRole Default(true) Whether the user is allowed to play files.
  /// @param jukeboxRole Default(false) Whether the user is allowed to play files in jukebox mode.
  /// @param downloadRole Default(false) Whether the user is allowed to download files.
  /// @param uploadRole Default(false) Whether the user is allowed to upload files.
  /// @param playlistRole Default(false) Whether the user is allowed to create and delete playlists. Since 1.8.0, changing this role has no effect.
  /// @param coverArtRole Default(false) Whether the user is allowed to change cover art and tags.
  /// @param commentRole Default(false) Whether the user is allowed to create and edit comments and ratings.
  /// @param podcastRole Default(false) Whether the user is allowed to administrate Podcasts.
  /// @param shareRole Default(false) (Since 1.8.0) Whether the user is allowed to share files with anyone.
  /// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
  /// @param musicFolderId Default(All folders) (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
  ///
  /// Copied from [createUser].
  CreateUserProvider(
    CreateUserRequest request,
  ) : this._internal(
          (ref) => createUser(
            ref as CreateUserRef,
            request,
          ),
          from: createUserProvider,
          name: r'createUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createUserHash,
          dependencies: CreateUserFamily._dependencies,
          allTransitiveDependencies:
              CreateUserFamily._allTransitiveDependencies,
          request: request,
        );

  CreateUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreateUserRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateUserProvider._internal(
        (ref) => create(ref as CreateUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateUserProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  CreateUserRequest get request;
}

class _CreateUserProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreateUserRef {
  _CreateUserProviderElement(super.provider);

  @override
  CreateUserRequest get request => (origin as CreateUserProvider).request;
}

String _$updateUserHash() => r'55e208e0ba70e61e4564c929d7bd96dd44e77423';

/// http://your-server/rest/updateUser Since 1.10.1
/// Modifies an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user.
/// @param password The password of the user, either in clear text of hex-encoded (see above).
/// @param email The email address of the user.
/// @param ldapAuthenticated Whether the user is authenicated in LDAP.
/// @param adminRole Whether the user is administrator.
/// @param settingsRole Whether the user is allowed to change personal settings and password.
/// @param streamRole Whether the user is allowed to play files.
/// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Whether the user is allowed to download files.
/// @param uploadRole Whether the user is allowed to upload files.
/// @param coverArtRole Whether the user is allowed to change cover art and tags.
/// @param commentRole Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Whether the user is allowed to administrate Podcasts.
/// @param shareRole Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
/// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
///
/// Copied from [updateUser].
@ProviderFor(updateUser)
const updateUserProvider = UpdateUserFamily();

/// http://your-server/rest/updateUser Since 1.10.1
/// Modifies an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user.
/// @param password The password of the user, either in clear text of hex-encoded (see above).
/// @param email The email address of the user.
/// @param ldapAuthenticated Whether the user is authenicated in LDAP.
/// @param adminRole Whether the user is administrator.
/// @param settingsRole Whether the user is allowed to change personal settings and password.
/// @param streamRole Whether the user is allowed to play files.
/// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Whether the user is allowed to download files.
/// @param uploadRole Whether the user is allowed to upload files.
/// @param coverArtRole Whether the user is allowed to change cover art and tags.
/// @param commentRole Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Whether the user is allowed to administrate Podcasts.
/// @param shareRole Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
/// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
///
/// Copied from [updateUser].
class UpdateUserFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/updateUser Since 1.10.1
  /// Modifies an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user.
  /// @param password The password of the user, either in clear text of hex-encoded (see above).
  /// @param email The email address of the user.
  /// @param ldapAuthenticated Whether the user is authenicated in LDAP.
  /// @param adminRole Whether the user is administrator.
  /// @param settingsRole Whether the user is allowed to change personal settings and password.
  /// @param streamRole Whether the user is allowed to play files.
  /// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
  /// @param downloadRole Whether the user is allowed to download files.
  /// @param uploadRole Whether the user is allowed to upload files.
  /// @param coverArtRole Whether the user is allowed to change cover art and tags.
  /// @param commentRole Whether the user is allowed to create and edit comments and ratings.
  /// @param podcastRole Whether the user is allowed to administrate Podcasts.
  /// @param shareRole Whether the user is allowed to share files with anyone.
  /// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
  /// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
  /// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
  ///
  /// Copied from [updateUser].
  const UpdateUserFamily();

  /// http://your-server/rest/updateUser Since 1.10.1
  /// Modifies an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user.
  /// @param password The password of the user, either in clear text of hex-encoded (see above).
  /// @param email The email address of the user.
  /// @param ldapAuthenticated Whether the user is authenicated in LDAP.
  /// @param adminRole Whether the user is administrator.
  /// @param settingsRole Whether the user is allowed to change personal settings and password.
  /// @param streamRole Whether the user is allowed to play files.
  /// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
  /// @param downloadRole Whether the user is allowed to download files.
  /// @param uploadRole Whether the user is allowed to upload files.
  /// @param coverArtRole Whether the user is allowed to change cover art and tags.
  /// @param commentRole Whether the user is allowed to create and edit comments and ratings.
  /// @param podcastRole Whether the user is allowed to administrate Podcasts.
  /// @param shareRole Whether the user is allowed to share files with anyone.
  /// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
  /// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
  /// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
  ///
  /// Copied from [updateUser].
  UpdateUserProvider call(
    UpdateUserRequest request,
  ) {
    return UpdateUserProvider(
      request,
    );
  }

  @override
  UpdateUserProvider getProviderOverride(
    covariant UpdateUserProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateUserProvider';
}

/// http://your-server/rest/updateUser Since 1.10.1
/// Modifies an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user.
/// @param password The password of the user, either in clear text of hex-encoded (see above).
/// @param email The email address of the user.
/// @param ldapAuthenticated Whether the user is authenicated in LDAP.
/// @param adminRole Whether the user is administrator.
/// @param settingsRole Whether the user is allowed to change personal settings and password.
/// @param streamRole Whether the user is allowed to play files.
/// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
/// @param downloadRole Whether the user is allowed to download files.
/// @param uploadRole Whether the user is allowed to upload files.
/// @param coverArtRole Whether the user is allowed to change cover art and tags.
/// @param commentRole Whether the user is allowed to create and edit comments and ratings.
/// @param podcastRole Whether the user is allowed to administrate Podcasts.
/// @param shareRole Whether the user is allowed to share files with anyone.
/// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
/// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
/// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
///
/// Copied from [updateUser].
class UpdateUserProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/updateUser Since 1.10.1
  /// Modifies an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user.
  /// @param password The password of the user, either in clear text of hex-encoded (see above).
  /// @param email The email address of the user.
  /// @param ldapAuthenticated Whether the user is authenicated in LDAP.
  /// @param adminRole Whether the user is administrator.
  /// @param settingsRole Whether the user is allowed to change personal settings and password.
  /// @param streamRole Whether the user is allowed to play files.
  /// @param jukeboxRole Whether the user is allowed to play files in jukebox mode.
  /// @param downloadRole Whether the user is allowed to download files.
  /// @param uploadRole Whether the user is allowed to upload files.
  /// @param coverArtRole Whether the user is allowed to change cover art and tags.
  /// @param commentRole Whether the user is allowed to create and edit comments and ratings.
  /// @param podcastRole Whether the user is allowed to administrate Podcasts.
  /// @param shareRole Whether the user is allowed to share files with anyone.
  /// @param videoConversionRole Default(false) (Since 1.15.0) Whether the user is allowed to start video conversions.
  /// @param musicFolderId (Since 1.12.0) IDs of the music folders the user is allowed access to. Include the parameter once for each folder.
  /// @param maxBitRate (Since 1.13.0) The maximum bit rate (in Kbps) for the user. Audio streams of higher bit rates are automatically downsampled to this bit rate. Legal values: 0 (no limit), 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320.
  ///
  /// Copied from [updateUser].
  UpdateUserProvider(
    UpdateUserRequest request,
  ) : this._internal(
          (ref) => updateUser(
            ref as UpdateUserRef,
            request,
          ),
          from: updateUserProvider,
          name: r'updateUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateUserHash,
          dependencies: UpdateUserFamily._dependencies,
          allTransitiveDependencies:
              UpdateUserFamily._allTransitiveDependencies,
          request: request,
        );

  UpdateUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final UpdateUserRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(UpdateUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateUserProvider._internal(
        (ref) => create(ref as UpdateUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _UpdateUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateUserProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  UpdateUserRequest get request;
}

class _UpdateUserProviderElement
    extends AutoDisposeFutureProviderElement<Response> with UpdateUserRef {
  _UpdateUserProviderElement(super.provider);

  @override
  UpdateUserRequest get request => (origin as UpdateUserProvider).request;
}

String _$deleteUserHash() => r'9e9708d297be81ae9758270cd9ea543187c6680a';

/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
///
/// Copied from [deleteUser].
@ProviderFor(deleteUser)
const deleteUserProvider = DeleteUserFamily();

/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
///
/// Copied from [deleteUser].
class DeleteUserFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteUser Since 1.3.0
  /// Deletes an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user to delete.
  ///
  /// Copied from [deleteUser].
  const DeleteUserFamily();

  /// http://your-server/rest/deleteUser Since 1.3.0
  /// Deletes an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user to delete.
  ///
  /// Copied from [deleteUser].
  DeleteUserProvider call(
    DeleteUserRequest request,
  ) {
    return DeleteUserProvider(
      request,
    );
  }

  @override
  DeleteUserProvider getProviderOverride(
    covariant DeleteUserProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteUserProvider';
}

/// http://your-server/rest/deleteUser Since 1.3.0
/// Deletes an existing Subsonic user, using the following parameters:
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user to delete.
///
/// Copied from [deleteUser].
class DeleteUserProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteUser Since 1.3.0
  /// Deletes an existing Subsonic user, using the following parameters:
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user to delete.
  ///
  /// Copied from [deleteUser].
  DeleteUserProvider(
    DeleteUserRequest request,
  ) : this._internal(
          (ref) => deleteUser(
            ref as DeleteUserRef,
            request,
          ),
          from: deleteUserProvider,
          name: r'deleteUserProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteUserHash,
          dependencies: DeleteUserFamily._dependencies,
          allTransitiveDependencies:
              DeleteUserFamily._allTransitiveDependencies,
          request: request,
        );

  DeleteUserProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeleteUserRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteUserRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteUserProvider._internal(
        (ref) => create(ref as DeleteUserRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteUserProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteUserProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteUserRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeleteUserRequest get request;
}

class _DeleteUserProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeleteUserRef {
  _DeleteUserProviderElement(super.provider);

  @override
  DeleteUserRequest get request => (origin as DeleteUserProvider).request;
}

String _$changePasswordHash() => r'e077de0659520141fb9cf2ddbdbf71baed51b908';

/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
///
/// Copied from [changePassword].
@ProviderFor(changePassword)
const changePasswordProvider = ChangePasswordFamily();

/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
///
/// Copied from [changePassword].
class ChangePasswordFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/changePassword Since 1.1.0
  /// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user which should change its password.
  /// @param password The new password of the new user, either in clear text of hex-encoded (see above).
  ///
  /// Copied from [changePassword].
  const ChangePasswordFamily();

  /// http://your-server/rest/changePassword Since 1.1.0
  /// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user which should change its password.
  /// @param password The new password of the new user, either in clear text of hex-encoded (see above).
  ///
  /// Copied from [changePassword].
  ChangePasswordProvider call(
    ChangePasswordRequest request,
  ) {
    return ChangePasswordProvider(
      request,
    );
  }

  @override
  ChangePasswordProvider getProviderOverride(
    covariant ChangePasswordProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'changePasswordProvider';
}

/// http://your-server/rest/changePassword Since 1.1.0
/// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
/// Returns an empty <subsonic-response> element on success.
/// @param username The name of the user which should change its password.
/// @param password The new password of the new user, either in clear text of hex-encoded (see above).
///
/// Copied from [changePassword].
class ChangePasswordProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/changePassword Since 1.1.0
  /// Changes the password of an existing Subsonic user, using the following parameters. You can only change your own password unless you have admin privileges.
  /// Returns an empty <subsonic-response> element on success.
  /// @param username The name of the user which should change its password.
  /// @param password The new password of the new user, either in clear text of hex-encoded (see above).
  ///
  /// Copied from [changePassword].
  ChangePasswordProvider(
    ChangePasswordRequest request,
  ) : this._internal(
          (ref) => changePassword(
            ref as ChangePasswordRef,
            request,
          ),
          from: changePasswordProvider,
          name: r'changePasswordProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$changePasswordHash,
          dependencies: ChangePasswordFamily._dependencies,
          allTransitiveDependencies:
              ChangePasswordFamily._allTransitiveDependencies,
          request: request,
        );

  ChangePasswordProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final ChangePasswordRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(ChangePasswordRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ChangePasswordProvider._internal(
        (ref) => create(ref as ChangePasswordRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _ChangePasswordProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChangePasswordProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChangePasswordRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  ChangePasswordRequest get request;
}

class _ChangePasswordProviderElement
    extends AutoDisposeFutureProviderElement<Response> with ChangePasswordRef {
  _ChangePasswordProviderElement(super.provider);

  @override
  ChangePasswordRequest get request =>
      (origin as ChangePasswordProvider).request;
}

String _$getBookmarksHash() => r'0a6f4c3954e8ac31bd8c62c959ebd858e760dd60';

/// http://your-server/rest/getBookmarks Since 1.9.0
/// Returns all bookmarks for this user. A bookmark is a position within a certain media file.
/// Returns a <subsonic-response> element with a nested <bookmarks> element on success. Example.
///
/// Copied from [getBookmarks].
@ProviderFor(getBookmarks)
final getBookmarksProvider = AutoDisposeFutureProvider<Response>.internal(
  getBookmarks,
  name: r'getBookmarksProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getBookmarksHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetBookmarksRef = AutoDisposeFutureProviderRef<Response>;
String _$createBookmarkHash() => r'906c699f7ceb35474f89d1f8ad56280b66703f2f';

/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
///
/// Copied from [createBookmark].
@ProviderFor(createBookmark)
const createBookmarkProvider = CreateBookmarkFamily();

/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
///
/// Copied from [createBookmark].
class CreateBookmarkFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/createBookmark Since 1.9.0
  /// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
  /// @param position The position (in milliseconds) within the media file.
  /// @param comment A user-defined comment.
  ///
  /// Copied from [createBookmark].
  const CreateBookmarkFamily();

  /// http://your-server/rest/createBookmark Since 1.9.0
  /// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
  /// @param position The position (in milliseconds) within the media file.
  /// @param comment A user-defined comment.
  ///
  /// Copied from [createBookmark].
  CreateBookmarkProvider call(
    CreateBookmarkRequest request,
  ) {
    return CreateBookmarkProvider(
      request,
    );
  }

  @override
  CreateBookmarkProvider getProviderOverride(
    covariant CreateBookmarkProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'createBookmarkProvider';
}

/// http://your-server/rest/createBookmark Since 1.9.0
/// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
/// @param position The position (in milliseconds) within the media file.
/// @param comment A user-defined comment.
///
/// Copied from [createBookmark].
class CreateBookmarkProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/createBookmark Since 1.9.0
  /// Creates or updates a bookmark (a position within a media file). Bookmarks are personal and not visible to other users.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file to bookmark. If a bookmark already exists for this file it will be overwritten.
  /// @param position The position (in milliseconds) within the media file.
  /// @param comment A user-defined comment.
  ///
  /// Copied from [createBookmark].
  CreateBookmarkProvider(
    CreateBookmarkRequest request,
  ) : this._internal(
          (ref) => createBookmark(
            ref as CreateBookmarkRef,
            request,
          ),
          from: createBookmarkProvider,
          name: r'createBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$createBookmarkHash,
          dependencies: CreateBookmarkFamily._dependencies,
          allTransitiveDependencies:
              CreateBookmarkFamily._allTransitiveDependencies,
          request: request,
        );

  CreateBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final CreateBookmarkRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(CreateBookmarkRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CreateBookmarkProvider._internal(
        (ref) => create(ref as CreateBookmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _CreateBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CreateBookmarkProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin CreateBookmarkRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  CreateBookmarkRequest get request;
}

class _CreateBookmarkProviderElement
    extends AutoDisposeFutureProviderElement<Response> with CreateBookmarkRef {
  _CreateBookmarkProviderElement(super.provider);

  @override
  CreateBookmarkRequest get request =>
      (origin as CreateBookmarkProvider).request;
}

String _$deleteBookmarkHash() => r'adc2e110c281fe93442327fc50fe2b2e206f463d';

/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
///
/// Copied from [deleteBookmark].
@ProviderFor(deleteBookmark)
const deleteBookmarkProvider = DeleteBookmarkFamily();

/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
///
/// Copied from [deleteBookmark].
class DeleteBookmarkFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/deleteBookmark Since 1.9.0
  /// Deletes the bookmark for a given file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
  ///
  /// Copied from [deleteBookmark].
  const DeleteBookmarkFamily();

  /// http://your-server/rest/deleteBookmark Since 1.9.0
  /// Deletes the bookmark for a given file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
  ///
  /// Copied from [deleteBookmark].
  DeleteBookmarkProvider call(
    DeleteBookmarkRequest request,
  ) {
    return DeleteBookmarkProvider(
      request,
    );
  }

  @override
  DeleteBookmarkProvider getProviderOverride(
    covariant DeleteBookmarkProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteBookmarkProvider';
}

/// http://your-server/rest/deleteBookmark Since 1.9.0
/// Deletes the bookmark for a given file.
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
///
/// Copied from [deleteBookmark].
class DeleteBookmarkProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/deleteBookmark Since 1.9.0
  /// Deletes the bookmark for a given file.
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of the media file for which to delete the bookmark. Other users' bookmarks are not affected.
  ///
  /// Copied from [deleteBookmark].
  DeleteBookmarkProvider(
    DeleteBookmarkRequest request,
  ) : this._internal(
          (ref) => deleteBookmark(
            ref as DeleteBookmarkRef,
            request,
          ),
          from: deleteBookmarkProvider,
          name: r'deleteBookmarkProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteBookmarkHash,
          dependencies: DeleteBookmarkFamily._dependencies,
          allTransitiveDependencies:
              DeleteBookmarkFamily._allTransitiveDependencies,
          request: request,
        );

  DeleteBookmarkProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final DeleteBookmarkRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(DeleteBookmarkRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteBookmarkProvider._internal(
        (ref) => create(ref as DeleteBookmarkRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _DeleteBookmarkProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteBookmarkProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DeleteBookmarkRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  DeleteBookmarkRequest get request;
}

class _DeleteBookmarkProviderElement
    extends AutoDisposeFutureProviderElement<Response> with DeleteBookmarkRef {
  _DeleteBookmarkProviderElement(super.provider);

  @override
  DeleteBookmarkRequest get request =>
      (origin as DeleteBookmarkProvider).request;
}

String _$getPlayQueueHash() => r'10e31d396540854103980df793c7eb113221c361';

/// http://your-server/rest/getPlayQueue Since 1.12.0
/// Returns the state of the play queue for this user (as set by savePlayQueue). This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns a <subsonic-response> element with a nested <playQueue> element on success, or an empty <subsonic-response> if no play queue has been saved. Example.
///
/// Copied from [getPlayQueue].
@ProviderFor(getPlayQueue)
final getPlayQueueProvider = AutoDisposeFutureProvider<Response>.internal(
  getPlayQueue,
  name: r'getPlayQueueProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getPlayQueueHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetPlayQueueRef = AutoDisposeFutureProviderRef<Response>;
String _$savePlayQueueHash() => r'c2ddbaff383294a9a92044fc98a2e0d56a2aa053';

/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
///
/// Copied from [savePlayQueue].
@ProviderFor(savePlayQueue)
const savePlayQueueProvider = SavePlayQueueFamily();

/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
///
/// Copied from [savePlayQueue].
class SavePlayQueueFamily extends Family<AsyncValue<Response>> {
  /// http://your-server/rest/savePlayQueue Since 1.12.0
  /// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
  /// @param current The ID of the current playing song.
  /// @param position The position in milliseconds within the currently playing song.
  ///
  /// Copied from [savePlayQueue].
  const SavePlayQueueFamily();

  /// http://your-server/rest/savePlayQueue Since 1.12.0
  /// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
  /// @param current The ID of the current playing song.
  /// @param position The position in milliseconds within the currently playing song.
  ///
  /// Copied from [savePlayQueue].
  SavePlayQueueProvider call(
    SavePlayQueueRequest request,
  ) {
    return SavePlayQueueProvider(
      request,
    );
  }

  @override
  SavePlayQueueProvider getProviderOverride(
    covariant SavePlayQueueProvider provider,
  ) {
    return call(
      provider.request,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'savePlayQueueProvider';
}

/// http://your-server/rest/savePlayQueue Since 1.12.0
/// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
/// Returns an empty <subsonic-response> element on success.
/// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
/// @param current The ID of the current playing song.
/// @param position The position in milliseconds within the currently playing song.
///
/// Copied from [savePlayQueue].
class SavePlayQueueProvider extends AutoDisposeFutureProvider<Response> {
  /// http://your-server/rest/savePlayQueue Since 1.12.0
  /// Saves the state of the play queue for this user. This includes the tracks in the play queue, the currently playing track, and the position within this track. Typically used to allow a user to move between different clients/apps while retaining the same play queue (for instance when listening to an audio book).
  /// Returns an empty <subsonic-response> element on success.
  /// @param id ID of a song in the play queue. Use one id parameter for each song in the play queue.
  /// @param current The ID of the current playing song.
  /// @param position The position in milliseconds within the currently playing song.
  ///
  /// Copied from [savePlayQueue].
  SavePlayQueueProvider(
    SavePlayQueueRequest request,
  ) : this._internal(
          (ref) => savePlayQueue(
            ref as SavePlayQueueRef,
            request,
          ),
          from: savePlayQueueProvider,
          name: r'savePlayQueueProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$savePlayQueueHash,
          dependencies: SavePlayQueueFamily._dependencies,
          allTransitiveDependencies:
              SavePlayQueueFamily._allTransitiveDependencies,
          request: request,
        );

  SavePlayQueueProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.request,
  }) : super.internal();

  final SavePlayQueueRequest request;

  @override
  Override overrideWith(
    FutureOr<Response> Function(SavePlayQueueRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SavePlayQueueProvider._internal(
        (ref) => create(ref as SavePlayQueueRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        request: request,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Response> createElement() {
    return _SavePlayQueueProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SavePlayQueueProvider && other.request == request;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, request.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SavePlayQueueRef on AutoDisposeFutureProviderRef<Response> {
  /// The parameter `request` of this provider.
  SavePlayQueueRequest get request;
}

class _SavePlayQueueProviderElement
    extends AutoDisposeFutureProviderElement<Response> with SavePlayQueueRef {
  _SavePlayQueueProviderElement(super.provider);

  @override
  SavePlayQueueRequest get request => (origin as SavePlayQueueProvider).request;
}

String _$getScanStatusHash() => r'd3196ce3e1e78972bacd5940a7b1965539c949c2';

/// http://your-server/rest/getScanStatus Since 1.15.0
/// Returns the current status for media library scanning. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <scanStatus> element on success. Example.
///
/// Copied from [getScanStatus].
@ProviderFor(getScanStatus)
final getScanStatusProvider = AutoDisposeFutureProvider<Response>.internal(
  getScanStatus,
  name: r'getScanStatusProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getScanStatusHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetScanStatusRef = AutoDisposeFutureProviderRef<Response>;
String _$startScanHash() => r'9480eda829df52eb8366e3f74c3e13c8d4972954';

/// http://your-server/rest/startScan Since 1.15.0
/// Initiates a rescan of the media libraries. Takes no extra parameters.
/// Returns a <subsonic-response> element with a nested <scanStatus> element on success. Example.
///
/// Copied from [startScan].
@ProviderFor(startScan)
final startScanProvider = AutoDisposeFutureProvider<Response>.internal(
  startScan,
  name: r'startScanProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$startScanHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef StartScanRef = AutoDisposeFutureProviderRef<Response>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
