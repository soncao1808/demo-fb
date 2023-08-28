import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/widgets/custom_popup.dart';
import 'package:fbapp/utilities/helpers/app_helper/navigator_global_context_helper.dart';

part 'main_page_state.freezed.dart';

final BuildContext context =
    injector.get<NavigatorGlobalContextHelper>().getCurrentContext;

void showPopup({
  String error = "",
  bool isCancle = false,
  VoidCallback? onHandleConfirm,
  String title = "Đóng",
}) {
  Navigator.push(
    context,
    CustomPopup(
      message: error,
      isCancle: isCancle,
      onHandleConfirm: onHandleConfirm,
      title: title,
    ),
  );
}

void navigationEventsHelper(Widget builder) {
  Navigator.of(context).push(
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => builder,
    ),
  );
}

enum MainPageBottom {
  home,
  shop,
  notification,
  menu;

  String get bottomTitle {
    switch (this) {
      case MainPageBottom.home:
        return AppLocalizations.of(context)!.text_bottom_bar_home;
      case MainPageBottom.shop:
        return AppLocalizations.of(context)!.text_bottom_bar_shop;
      case MainPageBottom.notification:
        return AppLocalizations.of(context)!.text_bottom_bar_notification;
      case MainPageBottom.menu:
        return AppLocalizations.of(context)!.text_bottom_bar_menu;
    }
  }

  String get activeIcon {
    switch (this) {
      case MainPageBottom.home:
        return AppIcons.icHomeActive;
      case MainPageBottom.shop:
        return AppIcons.icShopActive;
      case MainPageBottom.notification:
        return AppIcons.icNotificationActive;
      case MainPageBottom.menu:
        return AppIcons.icMenuActive;
    }
  }

  String get normalIcon {
    switch (this) {
      case MainPageBottom.home:
        return AppIcons.icHome;
      case MainPageBottom.shop:
        return AppIcons.icShop;
      case MainPageBottom.notification:
        return AppIcons.icNotification;
      case MainPageBottom.menu:
        return AppIcons.icMenu;
    }
  }
}

@freezed
class MainPageState with _$MainPageState {
  factory MainPageState({
    required MainPageBottom tabItem,
  }) = _MainPageState;

  const MainPageState._();

  factory MainPageState.initial() => MainPageState(
        tabItem: MainPageBottom.home,
      );
}
