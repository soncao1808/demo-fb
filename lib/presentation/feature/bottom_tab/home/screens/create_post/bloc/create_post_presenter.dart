import 'package:fbapp/data/models/location/location.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/react/react.dart';
import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'create_post_state.dart';

class CreatePostPresenter extends Cubit<CreatePostState> {
  CreatePostPresenter({
    @visibleForTesting CreatePostState? state,
  }) : super(state ?? CreatePostState.initial());

  void resetState() {
    emit(CreatePostState.initial());
  }

  void updateSelectPrivacy(int val) {
    emit(state.copyWith(selectPrivacy: val));
  }

  void init(Post? post) {
    if (post != null) {
      emit(
        state.copyWith(
          content: 'Lorem ipsum dolor sit amet consectetur.',
          selectPrivacy: 1,
          selectMedias: [],
          tagFriends: [
            const UserTag(
              id: 1,
              name: "Tag test 2",
              avatar: "https://cdn.pixabay.com/photo/2020/12/21/19/05/window-5850628_1280.png",
            )
          ],
          selectLocations: const Location(
            id: 0,
            name: "Location test 1",
            description: "Description test 1",
          ),
          selectReact: const React(
            id: 0,
            name: "React test 1",
            emoji: '😂',
          ),
        ),
      );
    }
  }

  void handleSelectMedias() async {
    try {
      final ImagePicker picker = ImagePicker();
      final List<XFile> medias = await picker.pickMultipleMedia();
      emit(state.copyWith(selectMedias: medias));
    } catch (e) {}
  }

  void handleTagFriends(List<UserTag> val) async {
    emit(state.copyWith(tagFriends: val));
  }

  void handleSelectLocations(Location? val) async {
    emit(state.copyWith(selectLocations: val));
  }

  void handleSelectReact(React? val) async {
    emit(state.copyWith(selectReact: val));
  }
}
