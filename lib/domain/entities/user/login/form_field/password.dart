import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum PasswordValidationError {
  pure,
  empty,
  invalid,
}

extension PasswordValidationErrorExtension on PasswordValidationError {
  String? get description {
    switch (this) {
      case PasswordValidationError.pure:
        return null;
      case PasswordValidationError.empty:
        return 'Vui lòng nhập mật khẩu';
      case PasswordValidationError.invalid:
        return 'Mật khẩu không hợp lệ';
    }
  }
}

class Password extends FormzInput<String?, PasswordValidationError> {
  Password.pure() : super.pure(null);

  Password.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  PasswordValidationError? validator(String? value) {
    if (value == null) {
      return PasswordValidationError.pure;
    } else if (value.isEmpty) {
      return PasswordValidationError.empty;
    } else if (validatorHelper.isNumericLengthPasswordValid(value)) {
      return null;
    } else {
      return PasswordValidationError.invalid;
    }
  }
}
