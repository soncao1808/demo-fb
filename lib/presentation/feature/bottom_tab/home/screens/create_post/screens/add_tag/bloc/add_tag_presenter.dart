import 'package:dartx/dartx.dart';
import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_tag_state.dart';

class AddTagPresenter extends Cubit<AddTagState> {
  AddTagPresenter(
    this._createPost, {
    @visibleForTesting AddTagState? state,
  }) : super(state ?? AddTagState.initial());
  final CreatePostPresenter _createPost;

  void resetState() {
    emit(AddTagState.initial());
  }

  void init(List<UserTag> defaultTag) {
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(listTag: [
        const UserTag(
          id: 0,
          name: "Tag test 1",
          avatar:
              "https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png",
        ),
        const UserTag(
          id: 1,
          name: "Tag test 2",
          avatar:
              "https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png",
        ),
      ]));
      emit(state.copyWith(
        status: AddTagPageStatus.addTagLoaded,
        selectTag: defaultTag,
      ));
    });
  }

  void updateSearchValue(String val) {
    emit(state.copyWith(searchValue: val));
  }

  void updateSelectTag(UserTag val) {
    List<UserTag> newData = [...state.selectTag];
    UserTag? findData =
        state.selectTag.firstOrNullWhere((element) => element.id == val.id);
    if (findData != null) {
      newData =
          state.selectTag.where((element) => element.id != val.id).toList();
    } else {
      newData.add(val);
    }
    emit(state.copyWith(selectTag: newData));
  }

  void handleNext() {
    _createPost.handleTagFriends(state.selectTag);
  }
}
