// ignore_for_file: use_build_context_synchronously

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:fbapp/domain/entities/user/resend_code/request/resend_code_request.dart';
import 'package:fbapp/domain/entities/user/resend_code/response/resend_code_response.dart';
import 'package:fbapp/domain/use_cases/user/resend_code_use_case.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/bloc/forgot_password_state.dart';
import 'package:fbapp/presentation/feature/authen/verification_code/verification_code.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';
import 'package:fbapp/utilities/helpers/language_helper/language_helper.dart';

class ForgotPasswordPresenter extends Cubit<ForgotPasswordState> {
  ForgotPasswordPresenter(
    this._resendCodeUseCase,
    this.navigatorGlobalContextHelper, {
    @visibleForTesting ForgotPasswordState? state,
  }) : super(state ?? ForgotPasswordState.initial());

  final ResendCodeUseCase _resendCodeUseCase;
  final NavigatorGlobalContextHelper navigatorGlobalContextHelper;

  void resetFormForgotPassword() {
    emit(state.copyWith(
      phone: Phone.pure(),
      status: FormzStatus.pure,
    ));
  }

  void phoneChanged(String value) {
    final Phone phone = Phone.dirty(value);
    emit(state.copyWith(
      phone: phone,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        phone,
      ]),
    ));
  }

  Future<void> handleForgotPassword(bool isFogotPassword) async {
    // emit(state.copyWith(isLoadingForgotPassword: true));
    try {
      // ResendCodeResponse response =
      //     await _resendCodeUseCase.run(ResendCodeRequest(
      //   phoneNumber: state.phone.value ?? "",
      // ));
      // emit(state.copyWith(isLoadingForgotPassword: false));
      Navigator.of(context).push(
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => VerificationCodePage(
            phoneNumber: state.phone.value ?? "",
            isSignUp: false,
            // userId: response.id,
            isFogotPassword: isFogotPassword,
          ),
        ),
      );
    } catch (error) {
      handleResendCodeError(error);
    }
  }

  void handleResendCodeError(Object? error) {
    emit(state.copyWith(isLoadingForgotPassword: false));

    if (error is DioError) {
      List<dynamic> messages = error.response?.data?['messages'] ?? <dynamic>[];

      if (messages.isNotEmpty) {
        for (dynamic e in messages) {
          return showPopup(
            error:
                LanguageHelper.of(context).getLocalText("forgot password $e"),
          );
        }
      } else {
        showPopup(error: LanguageHelper.of(context).getLocalText(''));
      }
    } else {
      showPopup(error: LanguageHelper.of(context).getLocalText(''));
    }
  }

  void clearState() {
    emit(ForgotPasswordState.initial());
  }

  bool get isDisable => !state.status.isValidated;
}
