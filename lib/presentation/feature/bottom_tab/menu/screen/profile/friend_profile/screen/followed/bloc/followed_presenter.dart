import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'followed_state.dart';

class FollowedPresenter extends Cubit<FollowedState> {
  FollowedPresenter({
    @visibleForTesting FollowedState? state,
  }) : super(state ?? FollowedState.initial());

  void init() {
    List<FriendUiModel> friends = LocalProfileData.friends;

    emit(state.copyWith(friends: friends));
  }

  void onSearchFriend(String text) {
    emit(state.copyWith(searchText: text));
    //Call API
  }

  void resetState() {
    emit(FollowedState.initial());
  }
}
