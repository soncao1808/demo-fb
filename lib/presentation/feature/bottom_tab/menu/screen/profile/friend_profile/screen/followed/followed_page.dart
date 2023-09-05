import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/build_search_bar_friend.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/bloc/followed_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/bloc/followed_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/component/list_followed.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class FollowedPage extends BasePage {
  const FollowedPage({super.key});

  @override
  State<FollowedPage> createState() => _FollowedPageState();
}

class _FollowedPageState extends BasePageState<FollowedPage> {
  final FollowedPresenter _followedPresenter = injector.get<FollowedPresenter>();

  @override
  void initState() {
    _followedPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _followedPresenter.resetState();
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
      label: AppLocalizations.of(context)!.text_following,
      labelStyle: AppTextStyles.labelBold14.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) => BlocConsumer<FollowedPresenter, FollowedState>(
        bloc: _followedPresenter,
        listenWhen: (FollowedState previous, FollowedState current) => (previous != current),
        listener: (BuildContext context, FollowedState state) {},
        builder: (BuildContext context, FollowedState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: Column(
              children: [
                BuildSearchBarFriend(
                  value: state.searchText,
                  onSearch: _followedPresenter.onSearchFriend,
                ),
                const Expanded(child: ListFollowed()),
              ],
            ),
          );
        },
      );
}
