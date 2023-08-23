// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/app/bloc/app_presenter.dart';

import '../../injection/injector.dart';
import '../../utilities/helpers/app_helper/app_helper.dart';
import '../../utilities/helpers/app_helper/navigator_global_context_helper.dart';
import '../app_router.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:intl/intl.dart';

import 'bloc/app_state.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with WidgetsBindingObserver {
  final AppHelper appHelper = injector.get<AppHelper>();
  final AppPresenter _appPresenter = injector.get<AppPresenter>();

  @override
  void initState() {
    Intl.defaultLocale = _appPresenter.language;
    _appPresenter.init();
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    appHelper.close();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    appHelper.addAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<AppPresenter, AppState>(
        bloc: _appPresenter,
        listenWhen: (AppState previous, AppState current) =>
            previous.locale != current.locale,
        listener: (BuildContext context, AppState state) {},
        builder: (BuildContext context, AppState state) {
          return ScreenUtilInit(
            useInheritedMediaQuery: true,
            builder: (BuildContext context, Widget? child) {
              return MaterialApp(
                title: 'Project Name',
                theme: getAppTheme(Brightness.light),
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                darkTheme: getAppTheme(Brightness.light),
                onGenerateRoute: AppRouter.onGenerateRoute,
                navigatorKey:
                    injector.get<NavigatorGlobalContextHelper>().navigatorKey,
                debugShowCheckedModeBanner: false,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: state.locale,
                useInheritedMediaQuery: false,
              );
            },
          );
        },
      );
}
