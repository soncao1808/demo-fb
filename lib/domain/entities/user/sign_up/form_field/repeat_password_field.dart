import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum RepeatPasswordFieldSignUpValidationError {
  pure,
  empty,
  invalid,
  notMatch,
}

class Password {
  Password({
    required this.password,
    required this.repeatPassword,
  });
  final String password;
  final String repeatPassword;
}

extension RepeatPasswordValidationErrorExtension
    on RepeatPasswordFieldSignUpValidationError {
  String? get description {
    switch (this) {
      case RepeatPasswordFieldSignUpValidationError.pure:
        return null;
      case RepeatPasswordFieldSignUpValidationError.empty:
        return 'Vui lòng nhập mật khẩu';
      case RepeatPasswordFieldSignUpValidationError.notMatch:
        return 'Mật khẩu không trùng khớp';
      case RepeatPasswordFieldSignUpValidationError.invalid:
        return 'Vui lòng nhập mật khẩu hợp lệ từ 6 đến 20 ký tự';
    }
  }
}

class RepeatPasswordFieldSignUp
    extends FormzInput<Password?, RepeatPasswordFieldSignUpValidationError> {
  RepeatPasswordFieldSignUp.pure() : super.pure(null);

  RepeatPasswordFieldSignUp.dirty([
    Password? value,
  ]) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  RepeatPasswordFieldSignUpValidationError? validator(Password? value) {
    if (value == null) {
      return RepeatPasswordFieldSignUpValidationError.pure;
    } else if (value.password.isEmpty) {
      return RepeatPasswordFieldSignUpValidationError.empty;
    } else {
      if (value.password != value.repeatPassword) {
        return RepeatPasswordFieldSignUpValidationError.notMatch;
      }
      if (validatorHelper.isNumericLengthPasswordValid(value.repeatPassword)) {
        return null;
      } else {
        return RepeatPasswordFieldSignUpValidationError.invalid;
      }
    }
  }
}
