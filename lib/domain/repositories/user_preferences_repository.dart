import 'package:fbapp/domain/entities/user/info/response/user.dart';

abstract class UserPreferencesRepository {
  User? getUser();

  Future setUser(User user);

  Future<void> clearAll();
}
