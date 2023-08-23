import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum RepeatPasswordFieldResetPasswordValidationError {
  pure,
  empty,
  invalid,
  notMatch,
}

class Password {
  Password({
    required this.newPassword,
    required this.repeatPassword,
  });
  final String newPassword;
  final String repeatPassword;
}

extension RepeatPasswordValidationErrorExtension
    on RepeatPasswordFieldResetPasswordValidationError {
  String? get description {
    switch (this) {
      case RepeatPasswordFieldResetPasswordValidationError.pure:
        return null;
      case RepeatPasswordFieldResetPasswordValidationError.empty:
        return 'Vui lòng nhập mật khẩu';
      case RepeatPasswordFieldResetPasswordValidationError.notMatch:
        return 'Mật khẩu không trùng khớp';
      case RepeatPasswordFieldResetPasswordValidationError.invalid:
        return 'Vui lòng nhập mật khẩu hợp lệ từ 6 đến 20 ký tự';
    }
  }
}

class RepeatPasswordFieldResetPassword extends FormzInput<Password?,
    RepeatPasswordFieldResetPasswordValidationError> {
  RepeatPasswordFieldResetPassword.pure() : super.pure(null);

  RepeatPasswordFieldResetPassword.dirty([
    Password? value,
  ]) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  RepeatPasswordFieldResetPasswordValidationError? validator(Password? value) {
    if (value == null) {
      return RepeatPasswordFieldResetPasswordValidationError.pure;
    } else if (value.newPassword.isEmpty) {
      return RepeatPasswordFieldResetPasswordValidationError.empty;
    } else {
      if (value.newPassword != value.repeatPassword) {
        return RepeatPasswordFieldResetPasswordValidationError.notMatch;
      }
      if (validatorHelper.isNumericLengthPasswordValid(value.repeatPassword)) {
        return null;
      } else {
        return RepeatPasswordFieldResetPasswordValidationError.invalid;
      }
    }
  }
}
