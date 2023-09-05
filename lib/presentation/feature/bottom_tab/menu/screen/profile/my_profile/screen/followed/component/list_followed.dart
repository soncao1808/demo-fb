import 'package:dartx/dartx.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/friend_profile.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/bloc/my_followed_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/bloc/my_followed_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/followed/component/item_followed.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListFollowed extends StatefulWidget {
  const ListFollowed({
    super.key,
  });

  @override
  State<ListFollowed> createState() => _ListFollowedState();
}

class _ListFollowedState extends State<ListFollowed> {
  final MyFollowedPresenter _myFollowedPresenter = injector.get<MyFollowedPresenter>();

  Widget renderContent(MyFollowedState state) {
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
  Widget build(BuildContext context) => BlocConsumer<MyFollowedPresenter, MyFollowedState>(
      bloc: _myFollowedPresenter,
      listenWhen: (MyFollowedState previous, MyFollowedState current) =>
          (previous.friends != current.friends),
      listener: (BuildContext context, MyFollowedState state) {},
      builder: (BuildContext context, MyFollowedState state) {
        if (state.friends.isEmpty) return Container();

        return Container(
          child: renderContent(state),
        );
      });
}
