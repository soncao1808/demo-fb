// N01 - Home
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/components/feature.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/events/events.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_presenter.dart';
import 'bloc/home_state.dart';
import 'components/header.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  static ScreenRoute get route => ScreenRoute(
        name: '/home',
        builder: (_) => const HomePage(),
      );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage> {
  final HomePresenter _homePresenter = injector.get<HomePresenter>();

  @override
  void initState() {
    _homePresenter.init();
    // injector<FCMPushNotification>().setupHandler();
    super.initState();
  }

  @override
  void dispose() {
    _homePresenter.clearState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<HomePresenter, HomeState>(
        bloc: _homePresenter,
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) => BaseContainer(
          body: Stack(
            children: <Widget>[
              RefreshIndicator(
                color: context.colors.backgroundPrimary,
                onRefresh: () async {
                  return await _homePresenter.refreshData();
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const HeaderHome(),
                      const FeatureHome(),
                      PrimaryButton(
                        title: 'EVENT',
                        onPressed: () {
                          navigationEventsHelper(const EventsPage());
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
