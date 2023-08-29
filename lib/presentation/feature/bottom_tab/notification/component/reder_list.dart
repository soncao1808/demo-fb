import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/bloc/notification_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/bloc/notification_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/component/item_account_allowed.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/component/item_notification.dart';
import 'package:fbapp/presentation/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

          return Container(
            color: context.colors.background,
            child: Column(
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
                      AppLocalizations.of(context)!
                          .text_notification_new_notification,
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
                          .text_Account_is_allowed_to_export,
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
                      AppLocalizations.of(context)!
                          .text_notification_before_notification,
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
            ),
          );
        },
      );
}
