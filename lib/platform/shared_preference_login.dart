import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPreferencesManager {
  Future<bool> cleanAll();

  Future<String> getUserName();

  Future<bool> setUserName(String newValue);
}

class SharedPreferencesManagerImpl implements SharedPreferencesManager {
  final _userName = 'user_name';
  final _emailadrees = 'email';
  final _password = 'password';
}