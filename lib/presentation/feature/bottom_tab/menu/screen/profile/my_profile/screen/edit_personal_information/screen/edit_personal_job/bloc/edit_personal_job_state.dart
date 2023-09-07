import 'package:fbapp/data/enum/user_enum.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_job_state.freezed.dart';

@freezed
class EditPersonalJobState with _$EditPersonalJobState {
  factory EditPersonalJobState({
    String? companyName,
    String? position,
    String? country,
    String? startDate,
    String? endDate,
    bool? workInHere,
    Privacy? privacy,
    required bool statusCompanyNameError,
    required bool statusCountryError,
  }) = _EditPersonalJobState;

  const EditPersonalJobState._();

  factory EditPersonalJobState.initial() => EditPersonalJobState(
        companyName: null,
        position: null,
        country: null,
        startDate: null,
        endDate: null,
        workInHere: null,
        privacy: null,
        statusCompanyNameError: false,
        statusCountryError: false,
      );
}
