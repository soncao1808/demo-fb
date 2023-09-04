import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_information_state.freezed.dart';

@freezed
class EditPersonalInformationState with _$EditPersonalInformationState {
  factory EditPersonalInformationState({
    UserUiModel? user,
  }) = _EditPersonalInformationState;

  const EditPersonalInformationState._();

  factory EditPersonalInformationState.initial() => EditPersonalInformationState();
}
