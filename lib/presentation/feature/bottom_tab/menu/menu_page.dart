import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/components/item_profile_widget.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/components/popup_logout.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/language/language_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/list_block/list_block_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/password_security.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/qr_scaner_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/setting_notification/setting_notification.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuPage extends BasePage {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends BasePageState<MenuPage> {
  final MenuPresenter _menuPresenter = injector.get<MenuPresenter>();

  @override
  void initState() {
    _menuPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _menuPresenter.cleanState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_menu_title,
      isBorderBottom: true,
      isBack: false,
      labelStyle: AppTextStyles.labelBold20.copyWith(
        color: context.colors.labelSecondary,
      ),
      brightness: Brightness.dark,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<MenuPresenter, MenuState>(
        bloc: _menuPresenter,
        listener: (BuildContext context, MenuState state) {},
        builder: (BuildContext context, MenuState state) => BaseContainer(
          backgroundColorAppBar: context.colors.backgroundPrimary,
          backgroundColor: context.colors.background,
          body: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: context.colors.background,
                    child: Column(
                      children: const <Widget>[
                        SizedBox(height: 10.0),
                        ItemProfileWidget(),
                        SizedBox(height: 8.0),
                        ListMemnuSelect(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class ListMemnuSelect extends StatelessWidget {
  const ListMemnuSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 8.0),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_profile,
          icon: AppIcons.icUserCircle,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const Placeholder(),
              ),
            );
          },
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_my_qr_code,
          icon: AppIcons.icQrCode,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const ScannerQRCodePage(),
              ),
            );
          },
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_password_security,
          icon: AppIcons.icPasswordSecurity,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const PasswordSecurityPage(),
              ),
            );
          },
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_setting,
          icon: AppIcons.icSetting,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) =>
                    const SettingNotificationPage(),
              ),
            );
          },
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_language,
          icon: AppIcons.icLanguage,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const LanguagePage(),
              ),
            );
          },
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_lock,
          icon: AppIcons.icUserLock,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const ListBlockPage(),
              ),
            );
          },
          isLogout: false,
        ),
        const SizedBox(height: 8.0),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_book_open,
          icon: AppIcons.icSetting,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const Placeholder(),
              ),
            );
          },
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_cirle_stack,
          icon: AppIcons.icCircleStack,
          onPress: () {},
          isLogout: false,
        ),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_check_badge,
          icon: AppIcons.icCheckBadge,
          onPress: () {},
          isLogout: false,
        ),
        const SizedBox(height: 8),
        ItemMemnu(
          title: AppLocalizations.of(context)!.text_menu_logout,
          icon: AppIcons.icLogout,
          onPress: () {
            Navigator.push(
              context,
              CustomPopup(
                body: const PopupLogout(),
              ),
            );
          },
          isLogout: true,
        ),
      ],
    );
  }
}

class ItemMemnu extends StatelessWidget {
  final String title;
  final String icon;
  final Function onPress;
  final bool isLogout;
  const ItemMemnu({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
    required this.isLogout,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        color: context.colors.backgroundSecondary,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 28,
                    height: 28,
                    child: Stack(
                      children: [
                        if (!isLogout)
                          Positioned(
                            left: 7,
                            bottom: 0,
                            child: Container(
                              width: 21,
                              height: 21,
                              decoration: BoxDecoration(
                                color: context.colors.goldenrod,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        Positioned(
                          child: SvgPicture.asset(
                            width: 24.0,
                            height: 24.0,
                            icon,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    title,
                    style: AppTextStyles.labelBold14.copyWith(
                      color: context.colors.label,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              width: 20.0,
              height: 20.0,
              AppIcons.icChevronRight,
              color: context.colors.lightcCharcoal,
            ),
          ],
        ),
      ),
    );
  }
}
