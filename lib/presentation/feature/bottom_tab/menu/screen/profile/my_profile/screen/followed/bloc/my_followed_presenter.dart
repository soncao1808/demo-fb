import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_followed_state.dart';

class MyFollowedPresenter extends Cubit<MyFollowedState> {
  MyFollowedPresenter({
    @visibleForTesting MyFollowedState? state,
  }) : super(state ?? MyFollowedState.initial());

  void init() {
    List<FriendUiModel> friends = LocalProfileData.friends;

    emit(state.copyWith(friends: friends));
  }

  void onSearchFriend(String text) {
    emit(state.copyWith(searchText: text));
    //Call API
  }

  void resetState() {
    emit(MyFollowedState.initial());
  }
}
