import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password.freezed.dart';
part 'change_password.g.dart';

@freezed
class ChangePasword with _$ChangePasword {
  factory ChangePasword({
    required String? password,
  }) = _ChangePasword;

  const ChangePasword._();

  factory ChangePasword.fromJson(Map<String, dynamic> json) =>
      _$ChangePaswordFromJson(json);
}
