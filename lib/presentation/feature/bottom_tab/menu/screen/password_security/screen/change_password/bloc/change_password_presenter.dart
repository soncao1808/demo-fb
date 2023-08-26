import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../../../../core/shared/session.dart';
import '../../../../../../../../../domain/entities/user/reset_password/form_field/new_password_field_reset_password.dart';
import '../../../../../../../../../domain/entities/user/reset_password/form_field/old_password_field_reset_password.dart';
import '../../../../../../../../../domain/entities/user/reset_password/form_field/repeat_password_field_reset_password.dart';
import '../../../../../../../../../domain/use_cases/user/change_password_use_case.dart';
import '../../../../../../../../../utilities/helpers/language_helper/language_helper.dart';
import '../../../../../../../main/bloc/main_page_state.dart';
import 'change_password_state.dart';

class ChangePasswordAccountPresenter extends Cubit<ChangePasswordAccountState> {
  ChangePasswordAccountPresenter(
    this._session,
    this._changePasswordUserUseCase, {
    @visibleForTesting ChangePasswordAccountState? state,
  }) : super(state ?? ChangePasswordAccountState.initial());

  final Session _session;
  final ChangePasswordUserUseCase _changePasswordUserUseCase;

  void clearState() {
    emit(ChangePasswordAccountState.initial());
  }

  void resetForm() {
    emit(state.copyWith(
        newPassword: NewPasswordFieldResetPassword.pure(),
        repeatPassword: RepeatPasswordFieldResetPassword.pure(),
        oldPassword: OldPasswordFieldResetPassword.pure()));
  }

  void oldPasswordChanged(String value) {
    final OldPasswordFieldResetPassword password =
        OldPasswordFieldResetPassword.dirty(value);
    emit(state.copyWith(
      oldPassword: password,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        password,
        state.newPassword,
        state.repeatPassword,
      ]),
    ));
  }

  void newPasswordChanged(String value) {
    final NewPasswordFieldResetPassword newPassword =
        NewPasswordFieldResetPassword.dirty(value);
    final String valueRepeatPassword =
        state.repeatPassword.value?.repeatPassword ?? '';

    if (valueRepeatPassword == '') {
      emit(state.copyWith(
        newPassword: newPassword,
        status: Formz.validate(<FormzInput<dynamic, dynamic>>[
          state.oldPassword,
          newPassword,
          state.repeatPassword,
        ]),
      ));
      return;
    }

    final RepeatPasswordFieldResetPassword repeatPassword =
        RepeatPasswordFieldResetPassword.dirty(
      Password(
        newPassword: value,
        repeatPassword: state.repeatPassword.value?.repeatPassword ?? '',
      ),
    );
    emit(state.copyWith(
      newPassword: newPassword,
      repeatPassword: repeatPassword,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.oldPassword,
        newPassword,
        repeatPassword,
      ]),
    ));
  }

  void repeatPasswordChanged(String value) {
    final RepeatPasswordFieldResetPassword repeatPassword =
        RepeatPasswordFieldResetPassword.dirty(
      Password(
        newPassword: state.newPassword.value ?? '',
        repeatPassword: value,
      ),
    );

    emit(state.copyWith(
      repeatPassword: repeatPassword,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.oldPassword,
        state.newPassword,
        repeatPassword,
      ]),
    ));
  }

  void handleVisibilityNewPassword() {
    emit(state.copyWith(isStatusNewPassword: !state.isStatusNewPassword));
  }

  void handleVisibilityOldassword() {
    emit(state.copyWith(isStatusOldPassword: !state.isStatusOldPassword));
  }

  void handleVisibilityRepeatPassword() {
    emit(state.copyWith(isStatusRepeatPassword: !state.isStatusRepeatPassword));
  }

  bool get isDisable => !state.status.isValidated;

  String? get newPassword => state.newPassword.value;

  void changePasswordUser() async {
    try {
      emit(state.copyWith(isStatusLoadingChangeUser: true));

      // await _changePasswordUserUseCase.run(ChangePasswordRequest(
      //   idUser: _session.user?.id ?? -1,
      //   currentPassword: state.oldPassword.value ?? '',
      //   password: state.newPassword.value ?? '',
      //   passwordConfirmation: state.repeatPassword.value?.repeatPassword ?? '',
      // ));

      // if (context.mounted) Navigator.pop(context);
      emit(state.copyWith(isStatusLoadingChangeUser: false));
    } catch (error) {
      emit(state.copyWith(isStatusLoadingChangeUser: false));
      if (error is DioError) {
        String errorsPassword =
            error.response?.data?['errors']?['current_password'] ?? '';

        String errorMessage = LanguageHelper.of(context)
            .getLocalText("change password $errorsPassword");

        return showPopup(error: errorMessage);
      } else {
        showPopup(error: AppLocalizations.of(context)!.text_common_error);
      }
    }
  }
}
