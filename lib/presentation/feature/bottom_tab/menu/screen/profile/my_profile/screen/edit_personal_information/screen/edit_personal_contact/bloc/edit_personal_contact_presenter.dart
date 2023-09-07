import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/utilities/helpers/popup_helper/popup_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_personal_contact_state.dart';

class EditPersonalContactPresenter extends Cubit<EditPersonalContactState> {
  EditPersonalContactPresenter({
    @visibleForTesting EditPersonalContactState? state,
  }) : super(state ?? EditPersonalContactState.initial());

  void init(UserUiModel? userModel) {
    emit(state.copyWith(
      phone: userModel?.phone?.phone,
      email: userModel?.mail?.mail,
      address: userModel?.address?.address,
      phonePrivacy: userModel?.phone?.privacy ?? Privacy.PUBLIC,
      emailPrivacy: userModel?.mail?.privacy ?? Privacy.PUBLIC,
      addressPrivacy: userModel?.address?.privacy ?? Privacy.PUBLIC,
    ));
  }

  void onUpdateEmail(String text) {
    emit(state.copyWith(email: text));
  }

  void onUpdateAddress(String text) {
    emit(state.copyWith(address: text));
  }

  void onUpdatePhonePrivacy(Privacy privacy) {
    emit(state.copyWith(phonePrivacy: privacy));
  }

  void onUpdateEmailPrivacy(Privacy privacy) {
    emit(state.copyWith(emailPrivacy: privacy));
  }

  void onUpdateAddressPrivacy(Privacy privacy) {
    emit(state.copyWith(addressPrivacy: privacy));
  }

  bool validateData() {
    if (state.phonePrivacy == null) return false;
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
    emit(EditPersonalContactState.initial());
  }
}
