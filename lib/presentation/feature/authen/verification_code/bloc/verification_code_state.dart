import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/base/process_status.dart';

part 'verification_code_state.freezed.dart';

@freezed
class VerificationCodeState with _$VerificationCodeState {
  factory VerificationCodeState(
      {required String code,
      required String status,
      @Default(ProcessStatus.initialized) ProcessStatus processStatus,
      Object? error,
      required bool isLoadingVerifyCode}) = _VerificationCodeState;

  const VerificationCodeState._();

  factory VerificationCodeState.initial() => VerificationCodeState(
      code: '', status: '', error: null, isLoadingVerifyCode: false);
}
