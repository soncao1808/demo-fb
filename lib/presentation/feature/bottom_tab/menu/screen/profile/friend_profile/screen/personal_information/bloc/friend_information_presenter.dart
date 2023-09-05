import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/personal_information/bloc/friend_information_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FriendInformationPresenter extends Cubit<FriendInformationState> {
  FriendInformationPresenter({
    @visibleForTesting FriendInformationState? state,
  }) : super(state ?? FriendInformationState.initial());

  void init() {
    initProfile();
  }

  void initProfile() {
    final FriendUiModel user = LocalProfileData.friend;
    emit(state.copyWith(user: user));
  }

  void resetState() {
    emit(FriendInformationState.initial());
  }
}
