import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum PasswordSignUpValidationError {
  pure,
  empty,
  invalid,
}

extension PasswordSignUpValidationErrorExtension
    on PasswordSignUpValidationError {
  String? get description {
    switch (this) {
      case PasswordSignUpValidationError.pure:
        return null;
      case PasswordSignUpValidationError.empty:
        return 'Vui lòng nhập mật khẩu';
      case PasswordSignUpValidationError.invalid:
        return 'Vui lòng nhập mật khẩu hợp lệ từ 6 đến 20 ký tự';
    }
  }
}

class PasswordSignUp
    extends FormzInput<String?, PasswordSignUpValidationError> {
  PasswordSignUp.pure() : super.pure(null);

  PasswordSignUp.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  PasswordSignUpValidationError? validator(String? value) {
    if (value == null) {
      return PasswordSignUpValidationError.pure;
    } else if (value.isEmpty) {
      return PasswordSignUpValidationError.empty;
    } else if (validatorHelper.isNumericLengthPasswordValid(value)) {
      return null;
    } else {
      return PasswordSignUpValidationError.invalid;
    }
  }
}
