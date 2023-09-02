// ignore_for_file: always_specify_types, dead_code

import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_state.dart';

class HomePresenter extends Cubit<HomeState> {
  HomePresenter(
    this._session, {
    HomeState? state,
  }) : super(state ?? HomeState.initial());

  final Session _session;

  void init() async {
    setInfoUser(_session.user);
    getListPost();
  }

  void getListPost() {
    emit(state.copyWith(status: HomePageStatus.listPostLoading));
    List<Post> posts = <Post>[
      const Post(
        id: 1,
        name:
            'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam',
        user: UserPost(
          avatar:
              'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
          name: "Test Name 1",
        ),
        likeCount: 1,
        shareCount: 1,
        commentCount: 1,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/31/14/55/nothing-1785760_1280.jpg',
        videoUrl:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        contentType: 'image',
      ),
      const Post(
        id: 2,
        name:
            'Lorem ipsum dolor sit amet consectetur. Consectetur imperdiet elementum pellentesque ut dictumst risus convallis convallis quam',
        user: UserPost(
          avatar:
              'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
          name: "Test Name 2",
        ),
        likeCount: 2,
        shareCount: 2,
        commentCount: 2,
        imageUrl:
            'https://cdn.pixabay.com/photo/2016/10/31/14/55/nothing-1785760_1280.jpg',
        videoUrl:
            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
        contentType: 'video',
      ),
    ];
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(listPost: posts));
      emit(state.copyWith(status: HomePageStatus.listPostLoaded));
    });
  }

  void setInfoUser(User? infoUser) {
    emit(state.copyWith(infoUser: infoUser));
  }

  void clearState() {
    emit(HomeState.initial());
  }

  Future<void> refreshData() async {}
}
