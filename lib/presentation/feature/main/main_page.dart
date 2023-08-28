// ignore_for_file: library_private_types_in_public_api, always_specify_types

import 'package:fbapp/core/resources/app_enums.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/base/progress_hud_mixin.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/home_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/menu_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/notification/notification_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/shop/shop_page.dart';
import 'package:fbapp/utilities/helpers/app_helper/scaffold_global_context_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/main_page_presenter.dart';
import 'bloc/main_page_state.dart';

class MainPage extends BasePage {
  const MainPage({
    Key? key,
    this.tab = MainPageTab.home,
  }) : super(key: key);

  static ScreenRoute get route => ScreenRoute(
        name: '/home',
        builder: (_) => const MainPage(),
      );

  final MainPageTab tab;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage>
    with ProgressHudMixin, WidgetsBindingObserver {
  final MainPagePresenter _presenter = injector.get<MainPagePresenter>();
  final GlobalKey<NavigatorState> homeNavigatorKey =
      GlobalKey<NavigatorState>();

  late final List<Widget> _pages = <Widget>[
    const HomePage(),
    const ShopPage(),
    const NotificationPage(),
    const MenuPage(),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    createConnection();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _presenter.cleanState();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {}

  void createConnection() {
    try {
      // final User? infoUser = injector.get<Session>().user;
      // Socket socket = SocketSingleton().socket;
      // socket.connect();
      // socket.onConnect(
      //   (_) {
      //     _presenter.onConnectSocket(infoUser as User);
      //   },
      // );
      // socket.onDisconnect((_) => {});
    } catch (e) {}
  }

  List<BottomNavigationBarItem> _getBottomNavigationBarItems(
    BuildContext context,
    MainPageBottom item,
    int countCart,
  ) {
    return MainPageBottom.values.map((MainPageBottom e) {
      return BottomNavigationBarItem(
        icon: Badge(
          smallSize: 10,
          isLabelVisible: false,
          label: Text(
            '$countCart',
            style: AppTextStyles.labelRegular10.copyWith(
              color: context.colors.backgroundSecondary,
            ),
          ),
          child: Container(
            margin: const EdgeInsets.only(bottom: 6.0),
            child: SizedBox(
              height: 24,
              width: 24,
              child: Image.asset(
                item == e ? e.activeIcon : e.normalIcon,
              ),
            ),
          ),
        ),
        label: e.bottomTitle,
      );
    }).toList();
  }

  @override
  Widget? buildBottomNavigationBar(BuildContext context) {
    return Container(
      height: 105,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: const Offset(0, 7),
        ),
      ]),
      child: SizedBox(
        height: 82,
        child: BottomNavigationBar(
          backgroundColor: context.colors.backgroundSecondary,
          unselectedItemColor: context.colors.textPrimary,
          selectedItemColor: context.colors.backgroundPrimary,
          items: _getBottomNavigationBarItems(
            context,
            _presenter.state.tabItem,
            0, // count
          ),
          currentIndex: _presenter.state.tabItem.index,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: AppTextStyles.labelBold12.copyWith(
            fontWeight: FontWeight.w700,
          ),
          unselectedLabelStyle: AppTextStyles.labelRegular12,
          elevation: 0,
          onTap: (int index) {
            final MainPageBottom newTab = MainPageBottom.values[index];
            _presenter.onChangeTab(newTab);
          },
        ),
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) => SafeArea(
        top: false,
        left: false,
        right: false,
        child: IndexedStack(
          index: _presenter.state.tabItem.index,
          children: _pages,
        ),
      );

  @override
  bool get resizeToAvoidBottomInset => true;

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<MainPagePresenter, MainPageState>(
      bloc: _presenter,
      listener: (BuildContext context, MainPageState state) {},
      builder: (BuildContext context, MainPageState state) => Scaffold(
        key: injector.get<ScaffoldGlobalContextHelper>().scaffoldKey,
        backgroundColor: context.colors.background,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        appBar: buildAppBar(context),
        body: buildBody(context),
        bottomNavigationBar: buildBottomNavigationBar(context),
        bottomSheet: buildBottomSheet(context),
        floatingActionButton: buildFloatActionButton(context),
      ),
    );
  }
}
