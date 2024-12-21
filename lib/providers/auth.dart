import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:dururu/models/auth_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth.g.dart';

@Riverpod(keepAlive: true)
class Auth extends _$Auth {
  final storage = const FlutterSecureStorage();

  @override
  Future<AuthModel?> build() async {
    final account = await storage.read(key: 'default_account');
    if (account == null) {
      return null;
    }

    return AuthModel.fromMap(jsonDecode(account));
  }

  Map<String, String> getAuthorization() {
    if (state.value == null) throw Exception();
    const chars = 'qwertyuiop[]asdfghjkl;zxcvbnm,./';
    final random = Random.secure();

    final salt =
        List.generate(10, (_) => chars[random.nextInt(chars.length - 1)])
            .join('');

    return {
      'u': state.value!.username,
      't': md5.convert(utf8.encode(state.value!.password + salt)).toString(),
      's': salt,
      'v': '1.6.1',
      'c': 'Dururu',
      'f': 'json'
    };
  }

  Future<void> login(
      {required String username,
      required String password,
      required String serverUrl}) async {
    final dio = Dio();

    final cleanServerUrl = serverUrl.endsWith('/')
        ? serverUrl.substring(0, serverUrl.length - 1)
        : serverUrl;
    const chars = 'qwertyuiop[]asdfghjkl;zxcvbnm,./';
    final random = Random.secure();

    final salt =
        List.generate(10, (_) => chars[random.nextInt(chars.length - 1)])
            .join('');
    final response =
        await dio.get('$cleanServerUrl/rest/ping.view', queryParameters: {
      'u': username,
      't': md5.convert(utf8.encode(password + salt)).toString(),
      's': salt,
      'v': '1.6.1',
      'c': 'Dururu',
      'f': 'json'
    });

    debugPrint(response.data.toString());
    if (response.data['subsonic-response']['status'] == 'ok') {
      final model = AuthModel(
          username: username, password: password, serverUrl: cleanServerUrl);
      state = AsyncValue.data(model);
      await storage.write(
        key: 'default_account',
        value: jsonEncode(
          model.toMap(),
        ),
      );

      return;
    }

    throw Exception('Login failed');
  }
}
