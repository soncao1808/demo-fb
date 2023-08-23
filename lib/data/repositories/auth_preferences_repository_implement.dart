// ignore_for_file: always_specify_types

import 'dart:convert';

import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/auth_preferences_repository.dart';

class AuthPreferencesRepositoryImplement extends AuthPreferencesRepository {
  AuthPreferencesRepositoryImplement(this._preferences);

  static const String prefix = 'auth';
  static const String _refreshTokenKey = '${prefix}_refresh_token_key';
  static const String _accessTokenKey = '${prefix}_access_token_key';
  static const String _accessInforUserKey = '${prefix}_access_info_user_key';
  static const String _localeKey = '${prefix}_locale_key';
  static const String _deviceTokenKey = '${prefix}_device_token_key';
  static const String _versioKey = 'version_key';
  static const String _phone = '_phone';

  final String _version = '1.0.0';
  final SharedPreferences _preferences;

  @override
  Future setAccessToken(String token) =>
      _preferences.setString(_accessTokenKey, token);

  @override
  Future setRefreshToken(String token) =>
      _preferences.setString(_refreshTokenKey, token);

  @override
  Future<void> clearAll() async {
    await _preferences.remove(_accessTokenKey);
    await _preferences.remove(_refreshTokenKey);
    await _preferences.remove(_accessInforUserKey);
    await _preferences.remove(_deviceTokenKey);
  }

  @override
  String? getAccessToken() => _preferences.getString(_accessTokenKey);

  @override
  String? getRefreshToken() => _preferences.getString(_refreshTokenKey);

  @override
  Future<void> setInfoUser(User? user) {
    setVersion(_version);
    if (user == null) {
      return _preferences.remove(_accessInforUserKey);
    } else {
      return _preferences.setString(_accessInforUserKey, jsonEncode(user));
    }
  }

  @override
  User? getInfoUserFromLocal() {
    final String? version = getVersion();
    if (version != _version) return null;
    final String? response = _preferences.getString(_accessInforUserKey);
    if (response != null) {
      Map<String, dynamic> user = jsonDecode(response);
      return User.fromJson(user);
    }
    return null;
  }

  @override
  String? getLocale() => _preferences.getString(_localeKey);

  @override
  Future setLocale(String token) => _preferences.setString(_localeKey, token);

  @override
  String? getDeviceToken() => _preferences.getString(_deviceTokenKey);

  @override
  Future<void> setDeviceToken(String deviceToken) =>
      _preferences.setString(_deviceTokenKey, deviceToken);

  String? getVersion() => _preferences.getString(_versioKey);

  Future<void> setVersion(String version) =>
      _preferences.setString(_versioKey, version);

  @override
  void setPhone(String phone) => _preferences.setString(_phone, phone);

  @override
  String? getPhone() {
    final String? phone = _preferences.getString(_phone);
    return phone;
  }
}
