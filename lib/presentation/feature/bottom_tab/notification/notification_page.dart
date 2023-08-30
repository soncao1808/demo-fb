import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/notification_presenter.dart';
import 'bloc/notification_state.dart';

class NotificationPage extends BasePage {
  const NotificationPage({super.key});

  static ScreenRoute get route => ScreenRoute(
        name: '/notification',
        builder: (_) => const NotificationPage(),
      );

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends BasePageState<NotificationPage> {
  final NotificationPresenter _notificationPresenter =
      injector.get<NotificationPresenter>();

  @override
  void initState() {
    _notificationPresenter.init();
    // injector<FCMPushNotification>().setupHandler();
    super.initState();
  }

  @override
  void dispose() {
    _notificationPresenter.clearState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<NotificationPresenter, NotificationState>(
        bloc: _notificationPresenter,
        listener: (BuildContext context, NotificationState state) {},
        builder: (BuildContext context, NotificationState state) =>
            BaseContainer(
          body: Stack(
            children: <Widget>[
              RefreshIndicator(
                color: context.colors.backgroundPrimary,
                onRefresh: () async {
                  return await _notificationPresenter.refreshData();
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[Text("Notification Page")],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}