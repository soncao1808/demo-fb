import 'package:dartx/dartx.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'post_detail_state.dart';

class PostDetailPresenter extends Cubit<PostDetailState> {
  PostDetailPresenter(
    this._homePresenter, {
    @visibleForTesting PostDetailState? state,
  }) : super(state ?? PostDetailState.initial());

  final HomePresenter _homePresenter;

  void resetState() {
    emit(PostDetailState.initial());
  }

  void init(int id) {
    Future.delayed(const Duration(seconds: 1), () {
      Post? findData = _homePresenter.state.listPost
          .firstOrNullWhere((element) => element.id == id);
      emit(state.copyWith(
        postDetail: findData,
      ));
      emit(state.copyWith(status: PostDetailPageStatus.postDetailLoaded));
    });
  }
}
