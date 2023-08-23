import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/login/form_field/password.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required Phone phone,
    required Password password,
    required FormzStatus status,
    Object? error,
    required bool isStatusPassword,
    required bool isLoadingLogin,
  }) = _LoginState;

  const LoginState._();

  factory LoginState.initial() => LoginState(
        phone: Phone.pure(),
        password: Password.pure(),
        status: FormzStatus.pure,
        error: null,
        isStatusPassword: false,
        isLoadingLogin: false,
      );
}
