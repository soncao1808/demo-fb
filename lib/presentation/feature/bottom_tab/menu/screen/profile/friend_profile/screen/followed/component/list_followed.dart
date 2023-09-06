import 'package:dartx/dartx.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/friend_profile.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/bloc/followed_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/component/item_followed.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';

class ListFollowed extends StatelessWidget {
  const ListFollowed({
    super.key,
    required this.state,
  });

  final FollowedState state;

  Widget renderContent(FollowedState state) {
    return CustomList(
      padding: EdgeInsets.zero,
      data: state.friends,
      page: 1,
      totalPage: 16,
      item: (int index) => ItemFollowed(
        item: state.friends[index],
        onTap: () {
          navigationEventsHelper(const FriendProfilePage());
        },
        onFollowTap: () {},
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
