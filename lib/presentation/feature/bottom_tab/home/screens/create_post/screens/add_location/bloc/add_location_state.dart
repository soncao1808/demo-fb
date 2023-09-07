import 'package:fbapp/data/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_location_state.freezed.dart';

enum AddLocationPageStatus {
  addLocationLoading,
  addLocationLoaded,
}

@freezed
class AddLocationState with _$AddLocationState {
  factory AddLocationState({
    required AddLocationPageStatus status,
    required List<Location> listLocation,
    required String searchValue,
    required Location? selectLocation,
  }) = _AddLocationState;

  const AddLocationState._();

  factory AddLocationState.initial() => AddLocationState(
        status: AddLocationPageStatus.addLocationLoading,
        listLocation: <Location>[],
        searchValue: '',
        selectLocation: null,
      );
}
