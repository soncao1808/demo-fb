import 'package:fbapp/injection/app_modules.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app/bloc/app_module.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/account/bloc/account_module.dart';

import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_module.dart';

import 'package:fbapp/presentation/feature/main/bloc/main_page_module.dart';
import 'package:fbapp/presentation/feature/splash/bloc/splash_module.dart';
import 'package:fbapp/presentation/widgets/calendart_horizontal/bloc/calendart_horizontal_module.dart';
import 'package:fbapp/utilities/helpers/app_helper/app_flavor_helper.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';
import 'package:fbapp/utilities/helpers/app_helper/scaffold_global_context_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DependencyManager {
  static Future<void> inject(AppFlavor appFlavor) async {
    // App Flavor
    injector.registerLazySingleton<AppFlavor>(() => appFlavor);

    // Inject get current context
    injector.registerLazySingleton<NavigatorGlobalContextHelper>(
      () => NavigatorGlobalContextHelper(),
    );

    injector.registerLazySingleton<ScaffoldGlobalContextHelper>(
      () => ScaffoldGlobalContextHelper(),
    );
    injector.registerSingletonAsync<AppLocalizations>(() {
      final WidgetsBinding widgetsBinding =
          WidgetsFlutterBinding.ensureInitialized();
      final List<Locale> preferred = widgetsBinding.window.locales;
      const List<Locale> supported = AppLocalizations.supportedLocales;
      final Locale locale = basicLocaleListResolution(preferred, supported);
      return AppLocalizations.delegate.load(locale);
    });

    // App modules
    await AppModules.inject();

    // Feature modules

    // await CommentModule.inject();

    // await DoneCommentModule.inject();

    await LoginModule.inject();

    await AppModule.inject();

    await SplashModule.inject();

    await HomeModule.inject();

    await MainPageModule.inject();

    await AccountModule.inject();

    await CalendartHorizontalModule.inject();
  }
}
