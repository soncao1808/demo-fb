import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/component/build_app_bar.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/component/build_header.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/component/build_header_content.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_scroll_page.dart';
import 'package:fbapp/presentation/widgets/item_post/item_post.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class FriendProfilePage extends BasePage {
  const FriendProfilePage({super.key});

  @override
  State<FriendProfilePage> createState() => _FriendProfilePageState();
}

class _FriendProfilePageState extends BasePageState<FriendProfilePage> {
  final FriendProfilePresenter _friendProfilePresenter = FriendProfilePresenter();

  @override
  void initState() {
    _friendProfilePresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _friendProfilePresenter.resetState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<FriendProfilePresenter, FriendProfileState>(
        bloc: _friendProfilePresenter,
        listenWhen: (FriendProfileState previous, FriendProfileState current) =>
            (previous.user != current.user),
        listener: (BuildContext context, FriendProfileState state) {},
        builder: (BuildContext context, FriendProfileState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            body: Column(
              children: [
                BuildFriendProfileAppBar(state: state),
                Expanded(
                  child: CustomScrollPage(
                    page: 1,
                    totalPage: 99,
                    onRefresh: _friendProfilePresenter.onRefreshPage,
                    onLoadMore: _friendProfilePresenter.onLoadMore,
                    padding: EdgeInsets.zero,
                    children: [
                      BuildFriendProfileHeader(state: state),
                      BuildFriendProfileHeaderContent(
                        state: state,
                        onSendMessTap: () {},
                        onFollowTap: _friendProfilePresenter.onFollowUser,
                      ),
                      breakLine(),
                      ...state.posts.map((e) => ItemPost(item: e, onTap: () {})).toList(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );

  Widget breakLine() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 1, color: context.colors.lightGray.withAlpha(50)),
        ),
      ),
    );
  }
}
