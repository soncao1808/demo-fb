import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/new_password_field_reset_password.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/repeat_password_field_reset_password.dart';

part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  factory ResetPasswordState({
    required NewPasswordFieldResetPassword newPassword,
    required RepeatPasswordFieldResetPassword repeatPassword,
    required FormzStatus status,
    Object? error,
    required bool isStatusNewPassword,
    required bool isStatusRepeatPassword,
    required bool isLoadingResetPassword,
  }) = _ResetPasswordState;

  const ResetPasswordState._();

  factory ResetPasswordState.initial() => ResetPasswordState(
      newPassword: NewPasswordFieldResetPassword.pure(),
      repeatPassword: RepeatPasswordFieldResetPassword.pure(),
      error: null,
      status: FormzStatus.pure,
      isStatusNewPassword: false,
      isStatusRepeatPassword: false,
      isLoadingResetPassword: false);
}
