import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum OldPasswordFieldResetPasswordValidationError {
  pure,
  empty,
  invalid,
}

extension OldValidationErrorExtension
    on OldPasswordFieldResetPasswordValidationError {
  String? get description {
    switch (this) {
      case OldPasswordFieldResetPasswordValidationError.pure:
        return null;
      case OldPasswordFieldResetPasswordValidationError.empty:
        return 'Vui lòng nhập mật khẩu';
      case OldPasswordFieldResetPasswordValidationError.invalid:
        return 'Vui lòng nhập mật khẩu hợp lệ từ 6 đến 20 ký tự';
    }
  }
}

class OldPasswordFieldResetPassword
    extends FormzInput<String?, OldPasswordFieldResetPasswordValidationError> {
  OldPasswordFieldResetPassword.pure() : super.pure(null);

  OldPasswordFieldResetPassword.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  OldPasswordFieldResetPasswordValidationError? validator(String? value) {
    if (value == null) {
      return OldPasswordFieldResetPasswordValidationError.pure;
    } else if (value.isEmpty) {
      return OldPasswordFieldResetPasswordValidationError.empty;
    } else if (validatorHelper.isNumericLengthPasswordValid(value)) {
      return null;
    } else {
      return OldPasswordFieldResetPasswordValidationError.invalid;
    }
  }
}
