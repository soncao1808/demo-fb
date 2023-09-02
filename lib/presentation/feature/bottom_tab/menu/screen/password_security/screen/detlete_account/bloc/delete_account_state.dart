import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_account_state.freezed.dart';

@freezed
class DeleteAcountState with _$DeleteAcountState {
  factory DeleteAcountState({
    required bool status,
    required Object? error,
    required bool isStatusLoadingdeleteAccount,
  }) = _DeleteAcountState;

  const DeleteAcountState._();

  factory DeleteAcountState.initial() => DeleteAcountState(
        error: null,
        status: false,
        isStatusLoadingdeleteAccount: false,
      );
}
