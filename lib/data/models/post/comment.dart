import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.g.dart';

@JsonSerializable(explicitToJson: true)
class Comment {
  const Comment({
    this.id,
  });

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);

  final int? id;

  dynamic toJson() => _$CommentToJson(this);
}
