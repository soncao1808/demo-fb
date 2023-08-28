import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/shop_presenter.dart';
import 'bloc/shop_state.dart';

class ShopPage extends BasePage {
  const ShopPage({super.key});

  static ScreenRoute get route => ScreenRoute(
        name: '/shop',
        builder: (_) => const ShopPage(),
      );

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends BasePageState<ShopPage> {
  final ShopPresenter _shopPresenter = injector.get<ShopPresenter>();

  @override
  void initState() {
    _shopPresenter.init();
    // injector<FCMPushNotification>().setupHandler();
    super.initState();
  }

  @override
  void dispose() {
    _shopPresenter.clearState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ShopPresenter, ShopState>(
        bloc: _shopPresenter,
        listener: (BuildContext context, ShopState state) {},
        builder: (BuildContext context, ShopState state) => BaseContainer(
          body: Stack(
            children: <Widget>[
              RefreshIndicator(
                color: context.colors.backgroundPrimary,
                onRefresh: () async {
                  return await _shopPresenter.refreshData();
                },
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[Text("Shop Page")],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
