import 'package:formz/formz.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/utilities/helpers/validator_helper/validator_helper.dart';

enum UserNameValidationError {
  pure,
  empty,
}

extension UserNameValidationErrorExtension on UserNameValidationError {
  String? get description {
    switch (this) {
      case UserNameValidationError.pure:
        return null;
      case UserNameValidationError.empty:
        return 'Vui lòng nhập tên';
    }
  }
}

class UserName extends FormzInput<String?, UserNameValidationError> {
  UserName.pure() : super.pure(null);

  UserName.dirty([String value = '']) : super.dirty(value);

  final ValidatorHelper validatorHelper = injector.get<ValidatorHelper>();

  @override
  UserNameValidationError? validator(String? value) {
    if (value == null) {
      return UserNameValidationError.pure;
    } else if (value.isEmpty) {
      return UserNameValidationError.empty;
    } else {
      return null;
    }
  }
}
