import 'package:fbapp/data/models/post/user_post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'view_like_state.dart';

class ViewLikePresenter extends Cubit<ViewLikeState> {
  ViewLikePresenter({
    @visibleForTesting ViewLikeState? state,
  }) : super(state ?? ViewLikeState.initial());

  void resetState() {
    emit(ViewLikeState.initial());
  }

  void init(int id) {
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(listViewLike: [
        const UserPost(
          avatar:
              'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
          name: "Test Name 1",
        ),
        const UserPost(
          avatar:
              'https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png',
          name: "Test Name 2",
        ),
      ]));
      emit(state.copyWith(status: ViewLikePageStatus.viewLikeLoaded));
    });
  }
}
