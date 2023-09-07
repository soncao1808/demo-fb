import 'package:fbapp/data/enum/user_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_detail_state.freezed.dart';

@freezed
class EditPersonalDetailState with _$EditPersonalDetailState {
  factory EditPersonalDetailState({
    String? firstName,
    String? middleName,
    String? lastName,
    Gender? gender,
    Privacy? genderPrivacy,
    String? birthDay,
    Privacy? birthDayPrivacy,
    required bool statusFirstNameError,
    required bool statusLastNameError,
  }) = _EditPersonalDetailState;

  const EditPersonalDetailState._();

  factory EditPersonalDetailState.initial() => EditPersonalDetailState(
        firstName: null,
        middleName: null,
        lastName: null,
        gender: null,
        genderPrivacy: null,
        birthDay: null,
        birthDayPrivacy: null,
        statusFirstNameError: false,
        statusLastNameError: false,
      );
}
