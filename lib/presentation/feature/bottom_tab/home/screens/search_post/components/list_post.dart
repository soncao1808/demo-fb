import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/post_detail.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/search_post/bloc/search_post_state.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/item_post/item_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPost extends StatefulWidget {
  const ListPost({
    super.key,
  });

  @override
  State<ListPost> createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
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
              data: state.listPost,
              item: (int index) => ItemPost(
                item: state.listPost[index],
                onTap: () {
                  navigationEventsHelper(PostDetailPage(
                    id: state.listPost[index].id ?? 0,
                  ));
                },
              ),
            ),
          );
        },
      );
}
