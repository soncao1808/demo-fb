import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_code_response.freezed.dart';

@freezed
class VerifyCodeResponse with _$VerifyCodeResponse {
  factory VerifyCodeResponse({
    required String? message,
  }) = _VerifyCodeResponse;

  const VerifyCodeResponse._();
}
