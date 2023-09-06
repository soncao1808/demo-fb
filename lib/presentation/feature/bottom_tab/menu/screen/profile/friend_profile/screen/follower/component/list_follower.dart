import 'package:dartx/dartx.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/friend_profile.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/bloc/follower_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/component/item_follower.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';

class ListFollower extends StatelessWidget {
  const ListFollower({
    super.key,
    required this.state,
    required this.onFollowTap,
  });

  final FollowerState state;
  final Function(int) onFollowTap;

  Widget renderContent(FollowerState state) {
    return CustomList(
      padding: EdgeInsets.zero,
      data: state.friends,
      page: 1,
      totalPage: 16,
      item: (int index) => ItemFollower(
        item: state.friends[index],
        onTap: () {
          navigationEventsHelper(const FriendProfilePage());
        },
        onFollowTap: () {
          onFollowTap(index);
        },
        isLast: index == state.friends.lastIndex,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (state.friends.isEmpty) return Container();

    return Container(
      child: renderContent(state),
    );
  }
}
