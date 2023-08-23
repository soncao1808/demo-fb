import 'dart:convert';

import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/user_preferences_repository.dart';

class UserPreferencesRepositoryImplement extends UserPreferencesRepository {
  UserPreferencesRepositoryImplement(this._preferences);

  final SharedPreferences _preferences;

  static const String _prefix = 'user_prefs';
  static const String _userJsonKey = '${_prefix}_user_json';

  @override
  Future setUser(User user) async =>
      _preferences.setString(_userJsonKey, json.encode(user.toJson()));

  @override
  User? getUser() {
    final String? userJson = _preferences.getString(_userJsonKey);
    if (userJson == null) {
      return null;
    }
    return User.fromJson(json.decode(userJson));
  }

  @override
  Future<void> clearAll() async {
    await _preferences.remove(_userJsonKey);
  }
}
