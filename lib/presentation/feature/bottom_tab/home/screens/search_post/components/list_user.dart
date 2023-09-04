import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/components/item_user.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListUser extends StatefulWidget {
  const ListUser({
    super.key,
  });

  @override
  State<ListUser> createState() => _ListUserState();
}

class _ListUserState extends State<ListUser> {
  final SearchPostPresenter _searchPostPresenter =
      injector.get<SearchPostPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SearchPostPresenter, SearchPostState>(
        bloc: _searchPostPresenter,
        listenWhen: (SearchPostState previous, SearchPostState current) =>
            (previous.status != current.status),
        listener: (BuildContext context, SearchPostState state) {},
        builder: (BuildContext context, SearchPostState state) {
          return Container(
            color: context.colors.cloudGray,
            child: CustomList(
              padding: EdgeInsets.zero,
              page: 1,
              totalPage: 10,
              data: state.listUser,
              item: (int index) => ItemUser(item: state.listUser[index]),
            ),
          );
        },
      );
}
