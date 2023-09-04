import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'search_post_state.dart';

class SearchPostPresenter extends Cubit<SearchPostState> {
  SearchPostPresenter({
    @visibleForTesting SearchPostState? state,
  }) : super(state ?? SearchPostState.initial());

  void init() {
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
    List<User> users = <User>[
      User(
        id: 1,
        name: 'User 1',
        email: '',
        phoneNumber: '',
        firstName: '',
        lastName: '',
        gender: '',
        birthDay: '',
        address: '',
        avatar:
            'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        role: '',
        points: 1,
        purchaseTotal: 1,
        membership:
            Membership(id: 1, name: '', title: '', content: '', level: 1),
        setting: Setting(id: 1, notification: false, sound: false),
        moduleName: '',
      ),
      User(
        id: 1,
        name: 'User 1',
        email: '',
        phoneNumber: '',
        firstName: '',
        lastName: '',
        gender: '',
        birthDay: '',
        address: '',
        avatar:
            'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        role: '',
        points: 1,
        purchaseTotal: 1,
        membership:
            Membership(id: 1, name: '', title: '', content: '', level: 1),
        setting: Setting(id: 1, notification: false, sound: false),
        moduleName: '',
      ),
      User(
        id: 1,
        name: 'User 1',
        email: '',
        phoneNumber: '',
        firstName: '',
        lastName: '',
        gender: '',
        birthDay: '',
        address: '',
        avatar:
            'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
        role: '',
        points: 1,
        purchaseTotal: 1,
        membership:
            Membership(id: 1, name: '', title: '', content: '', level: 1),
        setting: Setting(id: 1, notification: false, sound: false),
        moduleName: '',
      ),
    ];
    emit(state.copyWith(listPost: posts, listUser: users));
  }

  void resetState() {
    emit(SearchPostState.initial());
  }

  void setTabSelect(int val) {
    emit(state.copyWith(tabSelect: val));
  }

  void onChangingSearchText({required bool onChanging, String? changingText}) {
    emit(state.copyWith(
      searchText: changingText ?? state.searchText,
      status: SearchPostPageStatus.searchPostLoading,
    ));
  }
}
