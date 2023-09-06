import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/component/build_header_background.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_state.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:flutter/material.dart';

class BuildFriendProfileHeader extends StatelessWidget {
  const BuildFriendProfileHeader({
    super.key,
    required this.state,
  });

  final FriendProfileState state;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BuildHeaderBackground(url: state.user?.background ?? ''),
        Positioned(
          bottom: 0,
          left: 16,
          child: Avatar(
            url: state.user?.avatar ?? '',
            width: 152.0,
            height: 152.0,
            borderWidth: 5.0,
            circular: 200.0,
          ),
        ),
      ],
    );
  }
}
