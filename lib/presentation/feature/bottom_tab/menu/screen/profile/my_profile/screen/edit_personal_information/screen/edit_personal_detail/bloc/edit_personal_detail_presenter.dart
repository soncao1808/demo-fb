import 'package:dartx/dartx.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/popup_helper/popup_helper.dart';
import 'package:fbapp/utilities/helpers/timer_helper/timer_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_detail_state.dart';

class EditPersonalDetailPresenter extends Cubit<EditPersonalDetailState> {
  EditPersonalDetailPresenter({
    @visibleForTesting EditPersonalDetailState? state,
  }) : super(state ?? EditPersonalDetailState.initial());

  void init(UserUiModel? userModel) {
    emit(state.copyWith(
      firstName: userModel?.firstName,
      middleName: userModel?.middleName,
      lastName: userModel?.lastName,
      gender: userModel?.gender?.gender,
      genderPrivacy: userModel?.gender?.privacy ?? Privacy.PUBLIC,
      birthDay: userModel?.birthDay?.day,
      birthDayPrivacy: userModel?.birthDay?.privacy ?? Privacy.PUBLIC,
    ));
  }

  void onUpdateFirstName(String text) {
    emit(state.copyWith(firstName: text, statusFirstNameError: text.isNullOrBlank));
  }

  void onUpdateMiddleName(String text) {
    emit(state.copyWith(middleName: text));
  }

  void onUpdateLastName(String text) {
    emit(state.copyWith(lastName: text, statusLastNameError: text.isNullOrBlank));
  }

  void onUpdateGender(Gender gender) {
    emit(state.copyWith(
      gender: gender,
    ));
  }

  void onUpdateGenderPrivacy(Privacy privacy) {
    emit(state.copyWith(
      genderPrivacy: privacy,
    ));
  }

  void onUpdateBirthDay(DateTime dateTime) {
    emit(state.copyWith(
      birthDay: dateTime.dmy,
    ));
  }

  void onUpdateBirthDayPrivacy(Privacy privacy) {
    emit(state.copyWith(
      birthDayPrivacy: privacy,
    ));
  }

  bool validateData() {
    if (state.firstName.isNullOrBlank) return false;
    if (state.lastName.isNullOrBlank) return false;
    return true;
  }

  void onConfirmUpdate() {
    if (validateData()) {
      Navigator.of(context).pop();
    } else {
      PopupHelper.showPopUpError('Vui lòng nhập đầy đủ thông tin');
    }
  }

  void resetState() {
    emit(EditPersonalDetailState.initial());
  }
}
