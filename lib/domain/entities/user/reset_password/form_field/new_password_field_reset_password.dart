import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum NewPasswordFieldResetPasswordValidationError {
  pure,
  empty,
  invalid,
}

extension NewPasswordValidationErrorExtension
    on NewPasswordFieldResetPasswordValidationError {
  String? get description {
    switch (this) {
      case NewPasswordFieldResetPasswordValidationError.pure:
        return null;
      case NewPasswordFieldResetPasswordValidationError.empty:
        return 'Vui lòng nhập mật khẩu';
      case NewPasswordFieldResetPasswordValidationError.invalid:
        return 'Vui lòng nhập mật khẩu hợp lệ từ 6 đến 20 ký tự';
    }
  }
}

class NewPasswordFieldResetPassword
    extends FormzInput<String?, NewPasswordFieldResetPasswordValidationError> {
  NewPasswordFieldResetPassword.pure() : super.pure(null);

  NewPasswordFieldResetPassword.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  NewPasswordFieldResetPasswordValidationError? validator(String? value) {
    if (value == null) {
      return NewPasswordFieldResetPasswordValidationError.pure;
    } else if (value.isEmpty) {
      return NewPasswordFieldResetPasswordValidationError.empty;
    } else if (validatorHelper.isNumericLengthPasswordValid(value)) {
      return null;
    } else {
      return NewPasswordFieldResetPasswordValidationError.invalid;
    }
  }
}
