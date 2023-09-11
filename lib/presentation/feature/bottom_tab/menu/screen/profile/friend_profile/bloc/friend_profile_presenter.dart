import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'friend_profile_state.dart';

class FriendProfilePresenter extends Cubit<FriendProfileState> {
  FriendProfilePresenter({
    @visibleForTesting FriendProfileState? state,
  }) : super(state ?? FriendProfileState.initial());

  void init() {
    initData();
  }

  void initData() {
    final FriendUiModel user = LocalProfileData.friend;
    List<Post> posts = LocalProfileData.friendPosts;
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
    posts.addAll(LocalProfileData.friendPosts);
    await Future.delayed(const Duration(seconds: 1)).then((value) {
      emit(state.copyWith(posts: posts));
    });
  }

  void onFollowUser() {
    FriendUiModel? user = state.user?.copyWith(follow: !(state.user?.isFollowed ?? false));
    emit(state.copyWith(user: user));
  }

  void resetState() {
    emit(FriendProfileState.initial());
  }
}
