import 'package:shared_preferences/shared_preferences.dart';

class Auth {
  SharedPreferences prefs;
  String token = 'logado';
  Future<void> setDate() async {
    prefs = await SharedPreferences.getInstance();
    await prefs.setString('username', 'admin');
    await prefs.setString('password', 'admin');
    await prefs.setString('token', token);
  }

  bool authorization(String username, String password) {
    final user = prefs.getString('username');
    final pass = prefs.getString('password');
    if (user == username && pass == password) return true;
    return false;
  }

  bool session() {
    if (prefs.getString('token') == 'logado') return true;
    return false;
  }
}
