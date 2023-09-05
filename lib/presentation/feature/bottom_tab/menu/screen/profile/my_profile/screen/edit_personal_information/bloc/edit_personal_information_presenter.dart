import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/data/local_profile_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_information_state.dart';

class EditPersonalInformationPresenter extends Cubit<EditPersonalInformationState> {
  EditPersonalInformationPresenter({
    @visibleForTesting EditPersonalInformationState? state,
  }) : super(state ?? EditPersonalInformationState.initial());

  void init() {
    initProfile();
  }

  void initProfile() {
    final UserUiModel user = LocalProfileData.user;

    emit(state.copyWith(user: user));
  }

  void resetState() {
    emit(EditPersonalInformationState.initial());
  }
}
