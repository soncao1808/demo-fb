import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_tag.g.dart';

@JsonSerializable(explicitToJson: true)
class UserTag {
  const UserTag({
    required this.id,
    this.name,
    this.avatar,
  });

  factory UserTag.fromJson(Map<String, dynamic> json) =>
      _$UserTagFromJson(json);

  final int id;
  final String? name;
  final String? avatar;

  dynamic toJson() => _$UserTagToJson(this);
}
