import 'package:fbapp/domain/entities/user/info/response/user.dart';

abstract class AuthPreferencesRepository {
  Future<void> setAccessToken(String token);

  String? getAccessToken();

  Future<void> setRefreshToken(String token);

  String? getRefreshToken();

  Future<void> clearAll();

  Future<void> setInfoUser(User? user);

  User? getInfoUserFromLocal();

  Future<void> setLocale(String token);

  String? getLocale();

  String? getPhone();

  void setPhone(String phone);
}
