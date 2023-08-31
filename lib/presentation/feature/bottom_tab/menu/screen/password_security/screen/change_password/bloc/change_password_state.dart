import 'package:fbapp/domain/entities/user/reset_password/form_field/new_password_field_reset_password.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/old_password_field_reset_password.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/repeat_password_field_reset_password.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_state.freezed.dart';

@freezed
class ChangePasswordAccountState with _$ChangePasswordAccountState {
  factory ChangePasswordAccountState({
    required OldPasswordFieldResetPassword oldPassword,
    required NewPasswordFieldResetPassword newPassword,
    required RepeatPasswordFieldResetPassword repeatPassword,
    required FormzStatus status,
    Object? error,
    required bool isStatusNewPassword,
    required bool isStatusRepeatPassword,
    required bool isStatusOldPassword,
    required bool isStatusLoadingChangeUser,
  }) = _ChangePasswordAccountState;

  const ChangePasswordAccountState._();

  factory ChangePasswordAccountState.initial() => ChangePasswordAccountState(
        oldPassword: OldPasswordFieldResetPassword.pure(),
        newPassword: NewPasswordFieldResetPassword.pure(),
        repeatPassword: RepeatPasswordFieldResetPassword.pure(),
        error: null,
        status: FormzStatus.pure,
        isStatusNewPassword: false,
        isStatusRepeatPassword: false,
        isStatusOldPassword: false,
        isStatusLoadingChangeUser: false,
      );
}
