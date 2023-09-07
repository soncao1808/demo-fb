import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_follower_state.dart';

class MyFollowerPresenter extends Cubit<MyFollowerState> {
  MyFollowerPresenter({
    @visibleForTesting MyFollowerState? state,
  }) : super(state ?? MyFollowerState.initial());

  void init() {
    List<FriendUiModel> friends = LocalProfileData.friends;

    emit(state.copyWith(friends: friends));
  }

  void onSearchFriend(String text) {
    emit(state.copyWith(searchText: text));
    //Call API
  }

  void onAddFriend(int index) {
    List<FriendUiModel> friends = List<FriendUiModel>.from(state.friends);

    friends[index] = friends[index].copyWith(friend: true);

    emit(state.copyWith(friends: friends));
  }

  void resetState() {
    emit(MyFollowerState.initial());
  }
}
