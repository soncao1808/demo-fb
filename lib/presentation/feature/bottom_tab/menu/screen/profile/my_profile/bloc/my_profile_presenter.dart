import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_profile_state.dart';

class MyProfilePresenter extends Cubit<MyProfileState> {
  MyProfilePresenter({
    @visibleForTesting MyProfileState? state,
  }) : super(state ?? MyProfileState.initial());

  void init() {
    initData();
  }

  void initData() {
    final UserUiModel user = LocalProfileData.user;
    List<Post> posts = LocalProfileData.posts;
    Future.delayed(const Duration(seconds: 1)).then((value) {
      emit(state.copyWith(user: user, posts: posts));
    });
  }

  void onRefreshPage() {
    emit(state.copyWith(user: null, posts: []));
    initData();
  }

  Future<void> onLoadMore() async {
    List<Post> posts = List<Post>.from(state.posts);
    posts.addAll(LocalProfileData.posts);
    await Future.delayed(const Duration(seconds: 1)).then((value) {
      emit(state.copyWith(posts: posts));
    });
  }

  void resetState() {
    emit(MyProfileState.initial());
  }
}
