import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_residence_state.dart';

class EditPersonalResidencePresenter extends Cubit<EditPersonalResidenceState> {
  EditPersonalResidencePresenter({
    @visibleForTesting EditPersonalResidenceState? state,
  }) : super(state ?? EditPersonalResidenceState.initial());

  void init(UserUiModel? userModel) {
    emit(state.copyWith(
      currentAddress: userModel?.currentAddress?.address,
      homeTown: userModel?.hometown?.address,
      currentAddressPrivacy: userModel?.currentAddress?.privacy ?? Privacy.PUBLIC,
      homeTownPrivacy: userModel?.hometown?.privacy ?? Privacy.PUBLIC,
    ));
  }

  void onUpdateCurrentAddress(String text) {
    emit(state.copyWith(currentAddress: text));
  }

  void onUpdateHomeTown(String text) {
    emit(state.copyWith(homeTown: text));
  }

  void onUpdateCurrentAddressPrivacy(Privacy privacy) {
    emit(state.copyWith(currentAddressPrivacy: privacy));
  }

  void onUpdateHomeTownPrivacy(Privacy privacy) {
    emit(state.copyWith(homeTownPrivacy: privacy));
  }

  void onConfirmUpdate() {
    Navigator.of(context).pop();
  }

  void resetState() {
    emit(EditPersonalResidenceState.initial());
  }
}
