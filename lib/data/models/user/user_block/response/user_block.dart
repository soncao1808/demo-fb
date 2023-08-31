import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_block.freezed.dart';
part 'user_block.g.dart';

@freezed
class UserBlock with _$UserBlock {
  const factory UserBlock({
    required int? id,
    required String? name,
    required String? avatar,
    required int? idUser,
  }) = _UserBlock;

  factory UserBlock.fromJson(Map<String, dynamic> json) =>
      _$UserBlockFromJson(json);
}
