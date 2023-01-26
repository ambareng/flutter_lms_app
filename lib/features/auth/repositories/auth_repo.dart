import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthRepo {
  final storage = const FlutterSecureStorage();

  Future<bool> isAuthenticated() async {
    final String? accessToken = await storage.read(key: 'accessToken');
    return accessToken != null;
  }

  Future<String?> login(
      {required String username, required String password}) async {
    if (username == "abc123" && password == "qwerty") {
      await storage.write(key: 'accessToken', value: 'abc123');
      return "abc123";
    } else {
      return null;
    }
  }

  Future<void> logout() async {
    await storage.deleteAll();
  }
}
