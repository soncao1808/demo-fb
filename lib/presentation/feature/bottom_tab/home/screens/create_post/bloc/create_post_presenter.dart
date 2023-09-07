import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void init() {}
}
