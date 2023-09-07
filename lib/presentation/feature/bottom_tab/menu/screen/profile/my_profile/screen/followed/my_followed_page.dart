import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/build_search_bar_friend.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/bloc/my_followed_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/bloc/my_followed_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/component/list_followed.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class MyFollowedPage extends BasePage {
  const MyFollowedPage({super.key});

  @override
  State<MyFollowedPage> createState() => _MyFollowedPageState();
}

class _MyFollowedPageState extends BasePageState<MyFollowedPage> {
  final MyFollowedPresenter _myFollowedPresenter = injector.get<MyFollowedPresenter>();

  @override
  void initState() {
    _myFollowedPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _myFollowedPresenter.resetState();
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
  Widget buildBody(BuildContext context) =>
      BlocConsumer<MyFollowedPresenter, MyFollowedState>(
        bloc: _myFollowedPresenter,
        listenWhen: (MyFollowedState previous, MyFollowedState current) =>
            (previous != current),
        listener: (BuildContext context, MyFollowedState state) {},
        builder: (BuildContext context, MyFollowedState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            hasBackgroundImage: true,
            body: Column(
              children: [
                BuildSearchBarFriend(
                  value: state.searchText,
                  onSearch: _myFollowedPresenter.onSearchFriend,
                ),
                const Expanded(child: ListFollowed()),
              ],
            ),
          );
        },
      );
}
