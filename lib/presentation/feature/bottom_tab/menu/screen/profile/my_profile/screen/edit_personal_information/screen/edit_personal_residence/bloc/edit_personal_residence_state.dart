import 'package:fbapp/data/enum/user_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_residence_state.freezed.dart';

@freezed
class EditPersonalResidenceState with _$EditPersonalResidenceState {
  factory EditPersonalResidenceState({
    String? currentAddress,
    String? homeTown,
    Privacy? currentAddressPrivacy,
    Privacy? homeTownPrivacy,
  }) = _EditPersonalResidenceState;

  const EditPersonalResidenceState._();

  factory EditPersonalResidenceState.initial() => EditPersonalResidenceState(
        currentAddress: null,
        homeTown: null,
        currentAddressPrivacy: null,
        homeTownPrivacy: null,
      );
}
