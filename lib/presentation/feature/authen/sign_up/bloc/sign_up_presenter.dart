// ignore_for_file: use_build_context_synchronously, always_specify_types

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/email.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/password.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/repeat_password_field.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/user_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
// import 'package:fbapp/domain/entities/user/sign_up/request/sign_up_request.dart';
// import 'package:fbapp/domain/entities/user/sign_up/response/sign_up_response.dart';
import 'package:fbapp/domain/use_cases/user/sign_up_use_case.dart';
// import 'package:fbapp/presentation/feature/authen/verification_code/verification_code.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/language_helper/language_helper.dart';

import 'sign_up_state.dart';

class SignUpPresenter extends Cubit<SignUpState> {
  SignUpPresenter(
    this._signUpUseCase, {
    @visibleForTesting SignUpState? state,
  }) : super(state ?? SignUpState.initial());

  final SignUpUseCase _signUpUseCase;

  void handleVisibilityPassword() {
    emit(state.copyWith(isStatusPassword: !state.isStatusPassword));
  }

  void resetFormSignUp() {
    emit(state.copyWith(
      userName: UserName.pure(),
      phone: Phone.pure(),
      password: PasswordSignUp.pure(),
      email: Email.pure(),
      status: FormzStatus.pure,
    ));
  }

  void useNameChanged(String value) {
    final UserName userName = UserName.dirty(value);
    emit(state.copyWith(
      userName: userName,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        userName,
        state.phone,
        state.email,
        state.password,
        state.repeatPassword,
      ]),
    ));
  }

  void phoneChanged(String value) {
    final Phone phone = Phone.dirty(value);
    emit(state.copyWith(
      phone: phone,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.userName,
        phone,
        state.email,
        state.password,
        state.repeatPassword,
      ]),
    ));
  }

  void emailChanged(String value) {
    final Email email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.userName,
        state.phone,
        email,
        state.password,
        state.repeatPassword,
      ]),
    ));
  }

  void passwordChanged(String value) {
    final PasswordSignUp password = PasswordSignUp.dirty(value);
    final String valueRepeatPassword =
        state.repeatPassword.value?.repeatPassword ?? '';

    if (valueRepeatPassword == '') {
      emit(state.copyWith(
        password: password,
        status: Formz.validate(<FormzInput<dynamic, dynamic>>[
          state.userName,
          state.phone,
          state.email,
          password,
          state.repeatPassword,
        ]),
      ));
      return;
    }

    final RepeatPasswordFieldSignUp repeatPassword =
        RepeatPasswordFieldSignUp.dirty(
      Password(
        password: value,
        repeatPassword: state.repeatPassword.value?.repeatPassword ?? '',
      ),
    );
    emit(state.copyWith(
      password: password,
      repeatPassword: repeatPassword,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.userName,
        state.phone,
        state.email,
        password,
        repeatPassword,
      ]),
    ));
  }

  void repeatPasswordChanged(String value) {
    final RepeatPasswordFieldSignUp repeatPassword =
        RepeatPasswordFieldSignUp.dirty(
      Password(
        password: state.password.value ?? '',
        repeatPassword: value,
      ),
    );

    emit(state.copyWith(
      repeatPassword: repeatPassword,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.userName,
        state.phone,
        state.email,
        state.password,
        repeatPassword,
      ]),
    ));
  }

  Future<void> handleSignUp() async {
    emit(state.copyWith(isLoadingSignUp: true));
    try {
      // final SignUpResponse response = await _signUpUseCase.run(SignUpRequest(
      //     name: state.userName.value ?? "",
      //     phoneNumber: state.phone.value ?? "",
      //     password: state.password.value ?? "",
      //     passwordConfirmation: state.repeatPassword.value!.repeatPassword));
      // emit(state.copyWith(isLoadingSignUp: false));
      // await Navigator.of(context).push(
      //   MaterialPageRoute<dynamic>(
      //     builder: (BuildContext context) => VerificationCodePage(
      //       phoneNumber: state.phone.value ?? "",
      //       isSignUp: true,
      //       password: state.password.value,
      //       userId: response.id,
      //     ),
      //   ),
      // );
      // clearState();
    } catch (error) {
      handleSignUpError(error);
    }
  }

  void handleSignUpError(Object? error) {
    emit(state.copyWith(isLoadingSignUp: false));

    final errorCommon = AppLocalizations.of(context)!.text_common_error;

    if (error is DioError) {
      final messages = error.response?.data?['messages'] ?? <dynamic>[];
      if (messages.isNotEmpty) {
        for (dynamic e in messages) {
          showPopup(
            error: LanguageHelper.of(context).getLocalText('sign up $e'),
          );
        }
      } else {
        showPopup(error: errorCommon);
      }
    } else {
      showPopup(error: errorCommon);
    }
  }

  void clearState() {
    emit(SignUpState.initial());
  }

  bool get isDisable =>
      !state.userName.valid ||
      !state.phone.valid ||
      !state.password.valid ||
      !state.repeatPassword.valid;

  void handleVisibilityRepeatPassword() {
    emit(state.copyWith(isStatusRepeatPassword: !state.isStatusRepeatPassword));
  }
}
