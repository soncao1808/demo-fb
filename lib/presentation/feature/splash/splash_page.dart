// ignore_for_file: library_private_types_in_public_api

import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import './bloc/splash_presenter.dart';

class SplashPage extends BasePage {
  const SplashPage({Key? key}) : super(key: key);

  static ScreenRoute get route => ScreenRoute(
        name: '/SplashPages',
        builder: (_) => const SplashPage(),
      );

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage> {
  final SplashPresenter _splashPresenter = injector.get<SplashPresenter>();

  @override
  void onInitState() {
    _splashPresenter.init();
    super.onInitState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: context.colors.background,
        body: buildBody(context),
      );

  @override
  Widget buildBody(BuildContext context) => Scaffold(
        backgroundColor: context.colors.backgroundSecondary,
        body: BaseContainer(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  AppImages.imageSplash,
                  width: 175.w,
                ),
              ),
            ],
          ),
        ),
      );
}
