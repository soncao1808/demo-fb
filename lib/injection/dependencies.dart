import 'package:fbapp/injection/app_modules.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app/bloc/app_module.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/account/bloc/account_module.dart';

import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_location/bloc/add_location_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_react/bloc/add_react_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/screens/add_tag/bloc/add_tag_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/bloc/post_detail_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post_history/bloc/search_post_history_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/view_like/bloc/view_like_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/view_share/bloc/view_share_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/bloc/followed_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/bloc/follower_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/personal_information/bloc/friend_information_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/language/bloc/language_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/list_block/bloc/user_block_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/delete_account_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/setting_notification/bloc/setting_notification_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_contact/bloc/edit_personal_contact_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_detail/bloc/edit_personal_detail_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_job/bloc/edit_personal_job_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_residence/bloc/edit_personal_residence_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/screen/edit_personal_story/bloc/edit_personal_story_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/bloc/my_followed_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/follower/bloc/my_follower_module.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/bloc/notification_module.dart';

import 'package:fbapp/presentation/feature/main/bloc/main_page_module.dart';
import 'package:fbapp/presentation/feature/splash/bloc/splash_module.dart';
import 'package:fbapp/presentation/widgets/calendart_horizontal/bloc/calendart_horizontal_module.dart';
import 'package:fbapp/presentation/widgets/input_sticker/bloc/input_sticker_module.dart';
import 'package:fbapp/utilities/helpers/app_helper/app_flavor_helper.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';
import 'package:fbapp/utilities/helpers/app_helper/scaffold_global_context_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../presentation/feature/authen/forgot_password/bloc/forgot_password_module.dart';
import '../presentation/feature/authen/reset_password/bloc/reset_password_module.dart';
import '../presentation/feature/authen/sign_up/bloc/sign_up_module.dart';
import '../presentation/feature/authen/verification_code/bloc/verification_code_module.dart';
import '../presentation/feature/bottom_tab/home/screens/events/bloc/events_module.dart';
import '../presentation/feature/bottom_tab/home/screens/events/screens/event_detail/bloc/event_detail_module.dart';
import '../presentation/feature/bottom_tab/home/screens/events/screens/owner_event/bloc/my_event_module.dart';
import '../presentation/feature/bottom_tab/home/screens/events/screens/search_event/bloc/search_event_module.dart';
import '../presentation/feature/bottom_tab/shop/bloc/shop_module.dart';
import '../presentation/feature/bottom_tab/menu/screen/profile/my_profile/bloc/my_profile_module.dart';
import '../presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/bloc/edit_personal_information_module.dart';

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

    await MenuModule.inject();

    await AppModule.inject();

    await SplashModule.inject();

    await HomeModule.inject();

    await ShopModule.inject();

    await MainPageModule.inject();

    await AccountModule.inject();

    await CalendartHorizontalModule.inject();

    await SignUpModule.inject();

    await VerificationCodeModule.inject();

    await ForgotPasswordModule.inject();

    await ResetPasswordModule.inject();

    await EventsModule.inject();

    await EventDetailModule.inject();

    await SearchEventModule.inject();

    await MyEventModule.inject();

    await PostDetailModule.inject();
    await ScannerQRCodeModule.inject();

    await ChangePasswordAccountModule.inject();

    await DeletedAccountModule.inject();

    await SettingNotificationAccountModule.inject();

    await LanguageModule.inject();

    await UserBlockModule.inject();

    await NotificationModule.inject();

    await ViewLikeModule.inject();

    await ViewShareModule.inject();

    await SearchPostModule.inject();

    await SearchPostHistoryModule.inject();

    await InputStickerModule.inject();

    await CreatePostModule.inject();

    await MyProfileModule.inject();

    await EditPersonalInformationModule.inject();

    await EditPersonalDetailModule.inject();

    await EditPersonalContactModule.inject();

    await EditPersonalResidenceModule.inject();

    await EditPersonalJobModule.inject();

    await EditPersonalStoryModule.inject();

    await MyFollowerModule.inject();

    await MyFollowedModule.inject();

    await FriendInformationModule.inject();

    await FollowerModule.inject();

    await FollowedModule.inject();

    await AddLocationModule.inject();

    await AddTagModule.inject();

    await AddReactModule.inject();
  }
}
