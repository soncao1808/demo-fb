// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/new_password_field_reset_password.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/repeat_password_field_reset_password.dart';
import 'package:fbapp/domain/entities/user/reset_password/request/reset_password_request.dart';
import 'package:fbapp/domain/use_cases/user/reset_password_use_case.dart';
import 'package:fbapp/presentation/feature/authen/login/login_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/utilities/helpers/language_helper/language_helper.dart';

import 'reset_password_state.dart';

class ResetPasswordPresenter extends Cubit<ResetPasswordState> {
  ResetPasswordPresenter(
    this._resetPasswordUseCase,
    this.navigatorGlobalContextHelper, {
    @visibleForTesting ResetPasswordState? state,
  }) : super(state ?? ResetPasswordState.initial());

  final ResetPasswordUseCase _resetPasswordUseCase;
  final NavigatorGlobalContextHelper navigatorGlobalContextHelper;

  void resetFormResetPassword() {
    emit(state.copyWith(
      newPassword: NewPasswordFieldResetPassword.pure(),
      repeatPassword: RepeatPasswordFieldResetPassword.pure(),
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
        newPassword,
        repeatPassword,
      ]),
    ));
  }

  void repeatPasswordChanged(String value) {
    final RepeatPasswordFieldResetPassword repeatPassword =
        RepeatPasswordFieldResetPassword.dirty(Password(
      newPassword: state.newPassword.value ?? '',
      repeatPassword: value,
    ));

    emit(state.copyWith(
      repeatPassword: repeatPassword,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.newPassword,
        repeatPassword,
      ]),
    ));
  }

  void handleVisibilityNewPassword() {
    emit(state.copyWith(isStatusNewPassword: !state.isStatusNewPassword));
  }

  void handleVisibilityRepeatPassword() {
    emit(state.copyWith(isStatusRepeatPassword: !state.isStatusRepeatPassword));
  }

  Future<void> handleResetPassword(int userId, String code) async {
    emit(state.copyWith(
      isLoadingResetPassword: true,
    ));
    try {
      await _resetPasswordUseCase.run(ResetPasswordRequest(
        userId: userId,
        code: code,
        password: state.newPassword.value ?? "",
        passwordConfirmation: state.repeatPassword.value!.repeatPassword,
      ));
      emit(state.copyWith(
        isLoadingResetPassword: false,
        status: FormzStatus.pure,
      ));
      resetFormResetPassword();
      Navigator.of(context).push(
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const LoginPage(),
        ),
      );
    } catch (error) {
      final String errorCommon =
          AppLocalizations.of(context)!.text_common_error;
      emit(state.copyWith(isLoadingResetPassword: false));
      showPopup(error: errorCommon);
    }
  }

  void clearState() {
    emit(ResetPasswordState.initial());
  }

  bool get isDisable => !state.status.isValidated;
}
