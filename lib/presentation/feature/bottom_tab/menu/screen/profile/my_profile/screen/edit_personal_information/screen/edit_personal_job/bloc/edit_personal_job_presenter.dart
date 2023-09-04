import 'package:dartx/dartx.dart';
import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/timer_helper/timer_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_job_state.dart';

class EditPersonalJobPresenter extends Cubit<EditPersonalJobState> {
  EditPersonalJobPresenter({
    @visibleForTesting EditPersonalJobState? state,
  }) : super(state ?? EditPersonalJobState.initial());

  void init(UserUiModel? userModel) {
    emit(state.copyWith(
      companyName: userModel?.job?.companyName,
      position: userModel?.job?.position,
      country: userModel?.job?.country,
      startDate: userModel?.job?.startDate,
      endDate: userModel?.job?.endDate,
      workInHere: userModel?.job?.workInHere ?? false,
      privacy: userModel?.job?.privacy ?? Privacy.PUBLIC,
    ));
  }

  void onUpdateCompanyName(String text) {
    emit(state.copyWith(companyName: text, statusCompanyNameError: text.isNullOrBlank));
  }

  void onUpdatePosition(String text) {
    emit(state.copyWith(position: text));
  }

  void onUpdateCompanyAddress(String text) {
    emit(state.copyWith(country: text, statusCountryError: text.isNullOrBlank));
  }

  void onUpdateStartDate(DateTime dateTime) {
    emit(state.copyWith(
      startDate: dateTime.dmy,
    ));
  }

  void onUpdateEndDate(DateTime dateTime) {
    emit(state.copyWith(
      endDate: dateTime.dmy,
    ));
  }

  void onUpdateWorkInHere() {
    final bool currentWorked = state.workInHere ?? false;
    emit(state.copyWith(workInHere: !currentWorked));
  }

  void onUpdatePrivacy(Privacy privacy) {
    emit(state.copyWith(privacy: privacy));
  }

  void onConfirmUpdate() {
    Navigator.of(context).pop();
  }

  void resetState() {
    emit(EditPersonalJobState.initial());
  }
}
