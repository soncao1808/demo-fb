// ignore_for_file: use_build_context_synchronously, always_specify_types

import 'package:dio/dio.dart';
import 'package:fbapp/presentation/feature/authen/reset_password/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/domain/entities/user/resend_code/request/resend_code_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/request/verify_code_request.dart';
import 'package:fbapp/domain/entities/user/verify_code/response/verify_code_response.dart';
import 'package:fbapp/domain/use_cases/user/resend_code_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_info_login_use_case.dart';
import 'package:fbapp/domain/use_cases/user/verify_code_use_case.dart';
import 'package:fbapp/presentation/feature/authen/login/login_page.dart';
// import 'package:fbapp/presentation/feature/authen/reset_password/reset_password_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/utilities/helpers/language_helper/language_helper.dart';
import 'package:fbapp/utilities/helpers/popup_helper/popup_helper.dart';

import 'verification_code_state.dart';

class VerificationCodePresenter extends Cubit<VerificationCodeState> {
  VerificationCodePresenter(
    this.navigatorGlobalContextHelper,
    this._verifyCodeUseCase,
    this._resendCodeUseCase,
    this._saveInfoLoginUseCase, {
    @visibleForTesting VerificationCodeState? state,
  }) : super(state ?? VerificationCodeState.initial());

  final NavigatorGlobalContextHelper navigatorGlobalContextHelper;
  final VerifyCodeUseCase _verifyCodeUseCase;
  final ResendCodeUseCase _resendCodeUseCase;
  final SaveInfoLoginUseCase _saveInfoLoginUseCase;

  void clearState() {
    emit(VerificationCodeState.initial());
  }

  void changeCode(
    int? userId,
    String code,
    bool isSignUp,
    String phoneNumber,
    String password,
    bool isFogotPassword,
  ) async {
    if (code.length == 6) {
      try {
        // VerifyCodeResponse response =
        //     await _verifyCodeUseCase.run(VerifyCodeRequest(
        //   code: code,
        //   phoneNumber: phoneNumber,
        //   type: isFogotPassword ? 'reset' : '',
        // ));
        // String message = response.message ?? '';

        // if (message != '') {
        //   String errorMessage =
        //       LanguageHelper.of(context).getLocalText(message);

        //   showPopup(error: errorMessage);
        //   return;
        // }

        if (isSignUp) {
          _saveInfoLoginUseCase.run(phoneNumber);
          navigationEventsHelper(const LoginPage());
          return;
        }

        navigationEventsHelper(ResetPasswordPage(
          userId: userId,
          code: code,
        ));
      } catch (e) {
        handleVerifyCodeError(e);
      }
    }
  }

  Future<void> handleResendCode(String phoneNumber) async {
    try {
      if (state.isLoadingVerifyCode) return;
      emit(state.copyWith(isLoadingVerifyCode: true));

      await _resendCodeUseCase.run(ResendCodeRequest(
        phoneNumber: phoneNumber,
      ));
      PopupHelper().showPopUpSuccess(
        "Mã xác nhận đã được gửi, vui lòng kiểm tra tin nhắn!!!",
      );
      emit(state.copyWith(isLoadingVerifyCode: false));
    } catch (error) {
      emit(state.copyWith(isLoadingVerifyCode: false));
      showPopup(error: AppLocalizations.of(context)!.text_common_error);
    }
  }

  void handleVerifyCodeError(Object? error) {
    if (error is DioError) {
      final data = error.response?.data;
      if (data != null && data != '') {
        String errorsUser = error.response?.data!['messages'] ?? '';
        String errorMessage =
            LanguageHelper.of(context).getLocalText(errorsUser);
        showPopup(error: errorMessage);
      } else {
        showPopup(error: AppLocalizations.of(context)!.text_common_error);
      }
    } else {
      showPopup(error: AppLocalizations.of(context)!.text_common_error);
    }
  }
}
