import 'package:fbapp/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../injection/injector.dart';
import '../../../../../core/resources/app_text_styles.dart';
import '../../../../base/base_page.dart';
import '../bloc/notification_presenter.dart';
import '../bloc/notification_state.dart';

class HeaderNotification extends BasePage {
  const HeaderNotification({super.key});

  @override
  State<HeaderNotification> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderNotification> {
  final NotificationPresenter _notificationPresenter =
      injector.get<NotificationPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<NotificationPresenter, NotificationState>(
        bloc: _notificationPresenter,
        listener: (BuildContext context, NotificationState state) {},
        builder: (BuildContext context, NotificationState state) {
          final MediaQueryData mediaQuery = MediaQuery.of(context);
          return Container(
              padding: EdgeInsets.only(
                top: 20.0 + mediaQuery.padding.top,
                right: 16.0,
                left: 16.0,
                bottom: 12.0,
              ),
              color: context.colors.backgroundPrimary,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppLocalizations.of(context)!.text_b_01_notification_title,
                  style: AppTextStyles.labelBold20.copyWith(
                    color: context.colors.labelSecondary,
                  ),
                ),
              ));
        },
      );
}
