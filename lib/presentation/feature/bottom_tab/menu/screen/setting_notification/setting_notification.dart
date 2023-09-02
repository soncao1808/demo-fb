import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/setting_notification/bloc/setting_notification_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/setting_notification/bloc/setting_notification_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/presentation/widgets/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingNotificationPage extends BasePage {
  const SettingNotificationPage({super.key});

  @override
  State<SettingNotificationPage> createState() =>
      _SettingNotificationAccountPageState();
}

class _SettingNotificationAccountPageState
    extends BasePageState<SettingNotificationPage> {
  final SettingNotificationAccountPresenter
      _settingNotificationAccountPresenter =
      injector.get<SettingNotificationAccountPresenter>();

  @override
  void initState() {
    _settingNotificationAccountPresenter.init();
    super.initState();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundSecondary,
      label: AppLocalizations.of(context)!.text_menu_setting,
      isCenterTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) => BlocConsumer<
          SettingNotificationAccountPresenter, SettingNotificationState>(
        bloc: _settingNotificationAccountPresenter,
        listener: (BuildContext context, SettingNotificationState state) {},
        builder: (BuildContext context, SettingNotificationState state) {
          return BaseContainer(
            hasBackgroundImage: true,
            backgroundColor: context.colors.background,
            body: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 16.0),
                      ItemSettingNotificationAccount(
                        title: AppLocalizations.of(context)!
                            .text_setting_notification_push_notifications,
                        onPress: () => _settingNotificationAccountPresenter
                            .onSwitchPushNotication(),
                        isValue: state.isPushNotification,
                      ),
                      Container(
                        height: 0.5,
                        width: double.infinity,
                        color: context.colors.border,
                      ),
                      ItemSettingNotificationAccount(
                        title: AppLocalizations.of(context)!
                            .text_setting_notification_sound_notifications,
                        onPress: () => _settingNotificationAccountPresenter
                            .onSwitchNotificationSound(),
                        isValue: state.isNotificationSound,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
}

class ItemSettingNotificationAccount extends StatelessWidget {
  final String title;
  final Function onPress;
  final bool isValue;

  const ItemSettingNotificationAccount({
    super.key,
    required this.title,
    required this.onPress,
    required this.isValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 16.0,
      ),
      color: context.colors.backgroundSecondary,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              style: AppTextStyles.labelRegular14.copyWith(
                color: context.colors.label,
              ),
            ),
          ),
          CustomSwitch(
            width: 44.0,
            height: 22.0,
            activeColor: context.colors.backgroundPrimary,
            toggleSize: 18.0,
            padding: 2.0,
            value: isValue,
            onToggle: (bool value) {
              onPress();
            },
          )
        ],
      ),
    );
  }
}
