import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/base/process_status.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/email.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/password.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/repeat_password_field.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/user_name.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  factory SignUpState({
    required UserName userName,
    required Phone phone,
    required PasswordSignUp password,
    required Email email,
    required FormzStatus status,
    @Default(ProcessStatus.initialized) ProcessStatus processStatus,
    Object? error,
    required bool isStatusPassword,
    required bool isLoadingSignUp,
    required bool isStatusRepeatPassword,
    required RepeatPasswordFieldSignUp repeatPassword,
  }) = _SignUpState;

  const SignUpState._();

  factory SignUpState.initial() => SignUpState(
        userName: UserName.pure(),
        phone: Phone.pure(),
        password: PasswordSignUp.pure(),
        email: Email.pure(),
        status: FormzStatus.pure,
        error: null,
        isStatusPassword: false,
        isLoadingSignUp: false,
        isStatusRepeatPassword: false,
        repeatPassword: RepeatPasswordFieldSignUp.pure(),
      );
}
