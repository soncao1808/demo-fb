import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/build_search_bar_friend.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/follower/component/list_follower.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/my_follower_presenter.dart';
import 'bloc/my_follower_state.dart';

class MyFollowerPage extends BasePage {
  const MyFollowerPage({super.key});

  @override
  State<MyFollowerPage> createState() => _MyFollowerPageState();
}

class _MyFollowerPageState extends BasePageState<MyFollowerPage> {
  final MyFollowerPresenter _myFollowerPresenter = injector.get<MyFollowerPresenter>();

  @override
  void initState() {
    _myFollowerPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _myFollowerPresenter.resetState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundWhite,
      isBack: true,
      icBackColor: context.colors.label,
      isCenterTitle: true,
      label: AppLocalizations.of(context)!.text_follower,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<MyFollowerPresenter, MyFollowerState>(
        bloc: _myFollowerPresenter,
        listenWhen: (MyFollowerState previous, MyFollowerState current) =>
            (previous != current),
        listener: (BuildContext context, MyFollowerState state) {},
        builder: (BuildContext context, MyFollowerState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: Column(
              children: [
                BuildSearchBarFriend(
                  value: state.searchText,
                  onSearch: _myFollowerPresenter.onSearchFriend,
                ),
                const Expanded(child: ListFollower()),
              ],
            ),
          );
        },
      );
}
