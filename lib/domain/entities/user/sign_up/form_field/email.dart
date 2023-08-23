import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum EmailValidationError {
  pure,
  empty,
  invalid,
}

extension EmailValidationErrorExtension on EmailValidationError {
  String? get description {
    switch (this) {
      case EmailValidationError.pure:
        return null;
      case EmailValidationError.empty:
        return null;
      case EmailValidationError.invalid:
        return 'Địa chỉ mail không hợp lệ';
    }
  }
}

class Email extends FormzInput<String?, EmailValidationError> {
  Email.pure() : super.pure(null);

  Email.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  EmailValidationError? validator(String? value) {
    if (value == null) {
      return EmailValidationError.pure;
    } else if (value.isEmpty) {
      return null;
    } else if (validatorHelper.isEmail(value)) {
      return null;
    } else {
      return EmailValidationError.invalid;
    }
  }
}
