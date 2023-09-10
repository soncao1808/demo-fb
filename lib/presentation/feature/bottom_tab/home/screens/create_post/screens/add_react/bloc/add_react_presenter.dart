import 'package:fbapp/data/models/react/react.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_react_state.dart';

class AddReactPresenter extends Cubit<AddReactState> {
  AddReactPresenter(
    this._createPost, {
    @visibleForTesting AddReactState? state,
  }) : super(state ?? AddReactState.initial());
  final CreatePostPresenter _createPost;

  void resetState() {
    emit(AddReactState.initial());
  }

  void init(React? defaultReact) {
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(listReact: [
        const React(
          id: 0,
          name: "React test 1",
          emoji: '😂',
        ),
        const React(
          id: 1,
          name: "React test 2",
          emoji: '😭',
        ),
        const React(
          id: 2,
          name: "React test 3",
          emoji: '😁',
        ),
      ]));
      emit(state.copyWith(
        status: AddReactPageStatus.addReactLoaded,
        selectReact: defaultReact,
      ));
    });
  }

  void updateSearchValue(String val) {
    emit(state.copyWith(searchValue: val));
  }

  void updateSelectReact(React? val) {
    emit(state.copyWith(selectReact: val));
  }

  void handleNext() {
    _createPost.handleSelectReact(state.selectReact);
  }
}
