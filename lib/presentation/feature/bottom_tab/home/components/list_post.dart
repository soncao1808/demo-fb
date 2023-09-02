import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/post_detail/post_detail.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_list/custom_list.dart';
import 'package:fbapp/presentation/widgets/item_post/item_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListPost extends BasePage {
  const ListPost({super.key});

  @override
  State<ListPost> createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  final HomePresenter _homePresenter = injector.get<HomePresenter>();
  final MainPagePresenter _mainPagePresenter =
      injector.get<MainPagePresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<HomePresenter, HomeState>(
        bloc: _homePresenter,
        listenWhen: (HomeState previous, HomeState current) =>
            previous.status != current.status,
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) {
          if (state.listPost.isEmpty) return Container();
          return Expanded(
            child: Container(
              color: context.colors.background,
              // padding: const EdgeInsets.only(
              //   bottom: 12.0,
              // ),
              child: CustomList(
                padding: EdgeInsets.zero,
                data: state.listPost,
                page: 1,
                totalPage: 16,
                item: (int index) => ItemPost(
                  item: state.listPost[index],
                  onTap: () {
                    navigationEventsHelper(PostDetailPage(
                      id: state.listPost[index].id ?? 0,
                    ));
                  },
                ),
              ),
            ),
          );
        },
      );
}
