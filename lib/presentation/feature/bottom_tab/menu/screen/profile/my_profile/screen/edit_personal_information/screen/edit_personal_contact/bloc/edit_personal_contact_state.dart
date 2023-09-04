import 'package:fbapp/data/enum/user_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_contact_state.freezed.dart';

@freezed
class EditPersonalContactState with _$EditPersonalContactState {
  factory EditPersonalContactState({
    String? phone,
    String? email,
    String? address,
    Privacy? phonePrivacy,
    Privacy? emailPrivacy,
    Privacy? addressPrivacy,
  }) = _EditPersonalContactState;

  const EditPersonalContactState._();

  factory EditPersonalContactState.initial() => EditPersonalContactState(
        phone: null,
        email: null,
        address: null,
        phonePrivacy: null,
        emailPrivacy: null,
        addressPrivacy: null,
      );
}
