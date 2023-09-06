/* A-01 my page */
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/bloc/my_profile_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/component/build_app_bar.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/component/build_header.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/component/build_header_content.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_scroll_page.dart';
import 'package:fbapp/presentation/widgets/item_post/item_post.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/my_profile_state.dart';

class MyProfilePage extends BasePage {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends BasePageState<MyProfilePage> {
  final MyProfilePresenter _myProfilePresenter = injector.get<MyProfilePresenter>();

  @override
  void initState() {
    _myProfilePresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _myProfilePresenter.resetState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) => BlocConsumer<MyProfilePresenter, MyProfileState>(
        bloc: _myProfilePresenter,
        listenWhen: (MyProfileState previous, MyProfileState current) =>
            (previous.user != current.user),
        listener: (BuildContext context, MyProfileState state) {},
        builder: (BuildContext context, MyProfileState state) {
          return BaseContainer(
            backgroundColor: context.colors.background,
            body: Column(
              children: [
                const BuildMyProfileAppBar(),
                Expanded(
                  child: CustomScrollPage(
                    page: 1,
                    totalPage: 99,
                    onRefresh: _myProfilePresenter.onRefreshPage,
                    onLoadMore: _myProfilePresenter.onLoadMore,
                    padding: EdgeInsets.zero,
                    children: [
                      const BuildMyProfileHeader(),
                      const BuildMyProfileHeaderContent(),
                      breakLine(),
                      ...state.posts
                          .map((e) => ItemPost(
                                item: e,
                                onTap: () {},
                              ))
                          .toList()
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
