import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum PhoneValidationError {
  pure,
  empty,
  invalid,
}

extension PhoneValidationErrorExtension on PhoneValidationError {
  String? get description {
    switch (this) {
      case PhoneValidationError.pure:
        return null;
      case PhoneValidationError.empty:
        return 'Vui lòng nhập số điện thoại';
      case PhoneValidationError.invalid:
        return 'Số điện thoại không hợp lệ';
    }
  }
}

class Phone extends FormzInput<String?, PhoneValidationError> {
  Phone.pure() : super.pure(null);

  Phone.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  PhoneValidationError? validator(String? value) {
    if (value == null) {
      return PhoneValidationError.pure;
    } else if (value.isEmpty) {
      return PhoneValidationError.empty;
    } else if (validatorHelper.isNumericLengthPhoneValid(value)) {
      return null;
    } else {
      return PhoneValidationError.invalid;
    }
  }
}
