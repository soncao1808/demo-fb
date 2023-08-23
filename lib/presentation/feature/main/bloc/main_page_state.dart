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
  account;

  String get bottomTitle {
    switch (this) {
      case MainPageBottom.home:
        return AppLocalizations.of(context)!.text_bottom_bar_home;
      case MainPageBottom.account:
        return AppLocalizations.of(context)!.text_bottom_bar_account;
    }
  }

  String get activeIcon {
    switch (this) {
      case MainPageBottom.home:
        return AppIcons.icActiveHome;
      case MainPageBottom.account:
        return AppIcons.icActiveAccount;
    }
  }

  String get normalIcon {
    switch (this) {
      case MainPageBottom.home:
        return AppIcons.icHome;
      case MainPageBottom.account:
        return AppIcons.icAccount;
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
