import 'package:fbapp/domain/entities/change_password/request/change_password_request.dart';

abstract class ChangePasswordRepository {
  Future<void> changePassword(ChangePasswordRequest request);
}
