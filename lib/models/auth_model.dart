class AuthModel {
  final String username;
  final String password;
  final String serverUrl;

  AuthModel({
    required this.username,
    required this.password,
    required this.serverUrl,
  });

  static AuthModel fromMap(Map<String, dynamic> map) {
    return AuthModel(
      username: map['username'],
      password: map['password'],
      serverUrl: map['serverUrl'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'password': password,
      'serverUrl': serverUrl,
    };
  }
}
