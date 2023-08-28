import 'package:dio/dio.dart';
import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/domain/entities/user/login/form_field/password.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:fbapp/domain/entities/user/login/login_input.dart';
import 'package:fbapp/domain/entities/user/login/login_output.dart';
import 'package:fbapp/domain/use_cases/user/clear_auth_preferences_use_case.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_use_case.dart';
import 'package:fbapp/domain/use_cases/user/login_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_access_token_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/feature/main/main_page.dart';
import 'package:fbapp/utilities/helpers/language_helper/language_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

import 'login_state.dart';

class LoginPresenter extends Cubit<LoginState> {
  LoginPresenter(
    this._loginUseCase,
    this._saveAccessTokenUseCase,
    this._getInfoUserUseCase,
    this._session,
    this._clearAuthPreferencesUseCase, {
    @visibleForTesting LoginState? state,
  }) : super(state ?? LoginState.initial());

  final LoginUseCase _loginUseCase;
  final SaveAccessTokenUseCase _saveAccessTokenUseCase;
  final GetInfoUserUseCase _getInfoUserUseCase;
  final Session _session;
  final ClearAuthPreferencesUseCase _clearAuthPreferencesUseCase;

  final MainPagePresenter _mainPagePresenter =
      injector.get<MainPagePresenter>();

  void init() {
    setInfoUser();
  }

  void setInfoUser() {
    cleanState();
  }

  void handleVisibilityPassword() {
    emit(state.copyWith(isStatusPassword: !state.isStatusPassword));
  }

  void resetFormPassword() {
    emit(state.copyWith(
      password: Password.pure(),
    ));
  }

  void cleanState() {
    emit(state.copyWith(
      phone: Phone.pure(),
      password: Password.pure(),
    ));
  }

  void phoneChanged(String value) {
    final Phone phone = Phone.dirty(value);
    emit(state.copyWith(
      phone: phone,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        phone,
        state.password,
      ]),
    ));
  }

  void passwordChanged(String value) {
    final Password password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      status: Formz.validate(<FormzInput<dynamic, dynamic>>[
        state.phone,
        password,
      ]),
    ));
  }

  void clearState() {
    emit(LoginState.initial());
  }

  bool get isDisable => !state.status.isValidated;

  Future<void> handleLogin() async {
    emit(state.copyWith(isLoadingLogin: true));
    try {
      final MainPagePresenter _presenter = injector.get<MainPagePresenter>();

      // final String tokenDevices = await _fcmPushNotification.getToken() ?? '';

      // final LoginOutput userResponse = await _loginUseCase.run(LoginInput(
      //   phoneNumber: state.phone.value ?? '',
      //   password: state.password.value ?? '',
      // ));
      // await _saveAccessTokenUseCase.run(userResponse.token);
      // final User response = await _getInfoUserUseCase.run();
      // _session.user = response;
      // await _postDeviceTokenUseCase.run(
      //   PostDeviceTokenRequest(
      //     os: Platform.isAndroid ? 'android' : 'ios',
      //     tokenDevices: tokenDevices,
      //   ),
      // );
      handleLoginSuccess();
    } catch (error) {
      await _clearAuthPreferencesUseCase.run();
      handleLoginError(error);
    }
  }

  void handleLoginSuccess() {
    _mainPagePresenter.onChangeTab(MainPageBottom.home);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const MainPage(),
      ),
      ModalRoute.withName('/'),
    );
    emit(state.copyWith(isLoadingLogin: false));
  }

  void handleLoginError(Object? error) {
    emit(state.copyWith(isLoadingLogin: false));

    String errorOther =
        LanguageHelper.of(context).getLocalText("login error orther");

    if (error is DioError) {
      List<dynamic> messages = error.response?.data?['messages'] ?? <dynamic>[];

      if (messages.isNotEmpty) {
        for (dynamic e in messages) {
          if (e == 'user chưa xác minh') {
            return handleAccountNotVerify();
          }

          return showPopup(
            error: LanguageHelper.of(context).getLocalText("login $e"),
          );
        }
      } else {
        showPopup(error: errorOther);
      }
    } else {
      showPopup(error: errorOther);
    }
  }

  void handleAccountNotVerify() {}
}
