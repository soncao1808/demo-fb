import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_post.g.dart';

@JsonSerializable(explicitToJson: true)
class UserPost {
  const UserPost({
    this.avatar,
    this.name,
  });

  factory UserPost.fromJson(Map<String, dynamic> json) =>
      _$UserPostFromJson(json);

  final String? avatar;
  final String? name;

  dynamic toJson() => _$UserPostToJson(this);
}
