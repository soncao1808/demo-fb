import 'package:fbapp/data/models/react/react.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_react_state.freezed.dart';

enum AddReactPageStatus {
  addReactLoading,
  addReactLoaded,
}

@freezed
class AddReactState with _$AddReactState {
  factory AddReactState({
    required AddReactPageStatus status,
    required List<React> listReact,
    required String searchValue,
    required React? selectReact,
  }) = _AddReactState;

  const AddReactState._();

  factory AddReactState.initial() => AddReactState(
        status: AddReactPageStatus.addReactLoading,
        listReact: <React>[],
        searchValue: '',
        selectReact: null,
      );
}
