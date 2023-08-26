import 'package:fbapp/core/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/resources/app_text_styles.dart';
import '../../../../../injection/injector.dart';
import '../../../../base/base_page.dart';
import '../../../../widgets/loading.dart';
import '../bloc/notification_presenter.dart';
import '../bloc/notification_state.dart';
import 'item_account_allowed.dart';
import 'item_notification.dart';

class ListNotificationAndAccountAllowed extends BasePage {
  const ListNotificationAndAccountAllowed({
    super.key,
  });

  @override
  State<ListNotificationAndAccountAllowed> createState() =>
      _ListNotificationAndAccountAllowedState();
}

class _ListNotificationAndAccountAllowedState
    extends State<ListNotificationAndAccountAllowed> {
  final NotificationPresenter _notificationPresenter =
      injector.get<NotificationPresenter>();

  Widget renderListNotification(NotificationState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 16.0),
          ...state.notifications
              .map((String item) => ItemNotification(onPress: () {}))
              .toList(),
        ],
      ),
    );
  }

  Widget renderListAccountAllowed(NotificationState state) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 16.0),
          ...state.notifications
              .map((String item) => ItemAccounAllowed(onPress: () {}))
              .toList(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<NotificationPresenter, NotificationState>(
        bloc: _notificationPresenter,
        listenWhen: (NotificationState previous, NotificationState current) =>
            (previous.notifications != current.notifications ||
                previous.isNotificationLoading !=
                    current.isNotificationLoading),
        listener: (BuildContext context, NotificationState state) {},
        builder: (BuildContext context, NotificationState state) {
          if (state.isNotificationLoading) {
            return const SizedBox(
              height: 224.0,
              child: Loading(),
            );
          }

          if (state.notifications.isEmpty) return Container();

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 8.0),
              Container(
                color: context.colors.background,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: InkWell(
                  onTap: () => {},
                  child: Text(
                    AppLocalizations.of(context)!.text_b_01_notification_new,
                    style: AppTextStyles.labelRegular14.copyWith(
                      color: context.colors.backgroundPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              renderListNotification(state),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                color: context.colors.background,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: InkWell(
                  onTap: () => {},
                  child: Text(
                    AppLocalizations.of(context)!
                        .text_b_01_Account_is_allowed_to_export,
                    style: AppTextStyles.labelRegular14.copyWith(
                      color: context.colors.backgroundPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              renderListAccountAllowed(state),
              const SizedBox(
                height: 8.0,
              ),
              Container(
                color: context.colors.background,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: InkWell(
                  onTap: () => {},
                  child: Text(
                    AppLocalizations.of(context)!.text_b_01_notification_before,
                    style: AppTextStyles.labelRegular14.copyWith(
                      color: context.colors.backgroundPrimary,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              const SizedBox(
                height: 4.0,
              ),
              renderListNotification(state),
            ],
          );
        },
      );
}
