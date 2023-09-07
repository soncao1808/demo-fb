import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_story_state.dart';

class EditPersonalStoryPresenter extends Cubit<EditPersonalStoryState> {
  EditPersonalStoryPresenter({
    @visibleForTesting EditPersonalStoryState? state,
  }) : super(state ?? EditPersonalStoryState.initial());

  void init(UserUiModel? userModel) {
    emit(state.copyWith(story: userModel?.story));
  }

  void onUpdateStory(String text) {
    emit(state.copyWith(story: text));
  }

  void onConfirmUpdate() {
    Navigator.of(context).pop();
  }

  void resetState() {
    emit(EditPersonalStoryState.initial());
  }
}
