import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_code_response.freezed.dart';
part 'resend_code_response.g.dart';

@freezed
class ResendCodeResponse with _$ResendCodeResponse {
  const factory ResendCodeResponse({
    required int? id,
    required String? verifyCode,
  }) = _ResendCodeResponse;

  factory ResendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendCodeResponseFromJson(json);
}