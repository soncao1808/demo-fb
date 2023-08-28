import 'package:fbapp/domain/use_cases/user/clear_auth_preferences_use_case.dart';
import 'package:fbapp/domain/use_cases/user/logout_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/authen/login/login_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/app_helper/scaffold_global_context_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'menu_state.dart';

class MenuPresenter extends Cubit<MenuState> {
  MenuPresenter(
    this._scaffoldGlobalContextHelper,
    this._clearAuthPreferencesUseCase,
    this._logoutUseCase, {
    @visibleForTesting MenuState? state,
  }) : super(state ?? MenuState.initial());

  final ScaffoldGlobalContextHelper _scaffoldGlobalContextHelper;
  final ClearAuthPreferencesUseCase _clearAuthPreferencesUseCase;
  final LogoutUseCase _logoutUseCase;

  final HomePresenter _homePresenter = injector.get<HomePresenter>();

  void init() {
    setInfoUser();
  }

  void setInfoUser() {}

  Future<void> handleLogout() async {
    try {
      emit(state.copyWith(isStatusLogout: true));
      // final String tokenDevices = await _fcmPushNotification.getToken() ?? '';
      // await _logoutUseCase.run(DeleteDeviceTokenRequest(
      //   tokenDevices: tokenDevices,
      // ));
      await _clearAuthPreferencesUseCase.run();
      _scaffoldGlobalContextHelper.resetKey();
      handleLogoutSuccess();
      emit(state.copyWith(isStatusLogout: false));
    } catch (error) {
      handleLogoutFail();
    }
  }

  void handleLogoutFail() {
    emit(state.copyWith(isStatusLogout: false));
    showPopup(error: AppLocalizations.of(context)!.text_common_error);
  }

  void handleLogoutSuccess() {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const LoginPage(),
      ),
      ModalRoute.withName('/'),
    );
  }

  void cleanState() {
    emit(MenuState.initial());
  }
}
