import 'package:dartx/dartx.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/friend_profile.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/bloc/follower_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/bloc/follower_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/component/item_follower.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListFollower extends StatefulWidget {
  const ListFollower({
    super.key,
  });

  @override
  State<ListFollower> createState() => _ListFollowerState();
}

class _ListFollowerState extends State<ListFollower> {
  final FollowerPresenter _followerPresenter = injector.get<FollowerPresenter>();

  Widget renderContent(FollowerState state) {
    return CustomList(
      padding: EdgeInsets.zero,
      data: state.friends,
      page: 1,
      totalPage: 16,
      item: (int index) => ItemFollower(
        item: state.friends[index],
        onTap: () {
          Navigator.of(context).pop();
          navigationEventsHelper(const FriendProfilePage());
        },
        onFollowTap: () {
          _followerPresenter.onFollowFriend(index);
        },
        isLast: index == state.friends.lastIndex,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<FollowerPresenter, FollowerState>(
      bloc: _followerPresenter,
      listenWhen: (FollowerState previous, FollowerState current) =>
          (previous.friends != current.friends),
      listener: (BuildContext context, FollowerState state) {},
      builder: (BuildContext context, FollowerState state) {
        if (state.friends.isEmpty) return Container();

        return Container(
          child: renderContent(state),
        );
      });
}
