import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_use_case.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/authen/login/login_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:fbapp/presentation/feature/main/main_page.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';
import 'splash_state.dart';

class SplashPresenter extends Cubit<SplashState> {
  SplashPresenter(
    this._session,
    this._getInfoUserUseCase, {
    @visibleForTesting SplashState? state,
  }) : super(state ?? SplashState.initial());

  final Session _session;
  final GetInfoUserUseCase _getInfoUserUseCase;

  final BuildContext context =
      injector.get<NavigatorGlobalContextHelper>().getCurrentContext;
  final MainPagePresenter _presenter = injector.get<MainPagePresenter>();

  void init() async {
    // await injector<FCMPushNotification>().requestPermission();

    if (_session.hasLogin) {
      await Future<dynamic>.delayed(const Duration(milliseconds: 1000));
      getInfoUser();
      if (context.mounted) {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const MainPage(),
          ),
          ModalRoute.withName('/'),
        );
      }
      return;
    }

    await Future<dynamic>.delayed(const Duration(milliseconds: 1500));
    if (context.mounted) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute<dynamic>(
          builder: (BuildContext context) => const LoginPage(),
        ),
        ModalRoute.withName('/'),
      );
    }
  }

  Future<void> getInfoUser() async {
    try {
      final User response = await _getInfoUserUseCase.run();
      _session.user = response;
    } catch (e) {}
  }
}
