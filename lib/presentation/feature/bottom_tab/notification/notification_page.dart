import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/bloc/notification_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/bloc/notification_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/component/reder_list.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_notification_title,
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
      BlocConsumer<NotificationPresenter, NotificationState>(
        bloc: _notificationPresenter,
        listener: (BuildContext context, NotificationState state) {},
        builder: (BuildContext context, NotificationState state) =>
            BaseContainer(
          backgroundColorAppBar: context.colors.backgroundPrimary,
          body: Stack(
            children: <Widget>[
              RefreshIndicator(
                color: context.colors.backgroundPrimary,
                onRefresh: () async {
                  return await _notificationPresenter.refreshData();
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Expanded(
                      child: SingleChildScrollView(
                        child: ListNotificationAndAccountAllowed(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
