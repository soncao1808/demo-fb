import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'friend_profile_state.dart';

class FriendProfilePresenter extends Cubit<FriendProfileState> {
  FriendProfilePresenter({
    @visibleForTesting FriendProfileState? state,
  }) : super(state ?? FriendProfileState.initial());

  void init() {}

  void resetState() {
    emit(FriendProfileState.initial());
  }
}
