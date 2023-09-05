import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/build_search_bar_friend.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/component/list_follower.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/follower_presenter.dart';
import 'bloc/follower_state.dart';

class FollowerPage extends BasePage {
  const FollowerPage({super.key});

  @override
  State<FollowerPage> createState() => _FollowerPageState();
}

class _FollowerPageState extends BasePageState<FollowerPage> {
  final FollowerPresenter _followerPresenter = injector.get<FollowerPresenter>();

  @override
  void initState() {
    _followerPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _followerPresenter.resetState();
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
      BlocConsumer<FollowerPresenter, FollowerState>(
        bloc: _followerPresenter,
        listenWhen: (FollowerState previous, FollowerState current) =>
            (previous != current),
        listener: (BuildContext context, FollowerState state) {},
        builder: (BuildContext context, FollowerState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: Column(
              children: [
                BuildSearchBarFriend(
                  value: state.searchText,
                  onSearch: _followerPresenter.onSearchFriend,
                ),
                const Expanded(child: ListFollower()),
              ],
            ),
          );
        },
      );
}
