import 'package:fbapp/data/models/post/comment.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post.g.dart';

@JsonSerializable(explicitToJson: true)
class Post {
  const Post({
    this.id,
    this.user,
    this.name,
    this.time,
    this.likeCount,
    this.commentCount,
    this.shareCount,
    this.comments,
    this.liked,
    this.contentType,
    this.imageUrl,
    this.videoUrl,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  final int? id;
  final UserPost? user;
  final String? name;
  final String? time;
  final int? likeCount;
  final int? commentCount;
  final int? shareCount;
  final bool? liked;
  final List<Comment>? comments;
  final String? contentType;
  final String? imageUrl;
  final String? videoUrl;

  dynamic toJson() => _$PostToJson(this);

  Post copyWith({
    final int? newId,
    final UserPost? newUser,
    final String? newName,
    final String? newTime,
    final int? newLikeCount,
    final int? newCommentCount,
    final int? newShareCount,
    final bool? newLiked,
    final List<Comment>? newComments,
    final String? newContentType,
    final String? newImageUrl,
    final String? newVideoUrl,
  }) {
    return Post(
      id: newId ?? id,
      user: newUser ?? user,
      name: newName ?? name,
      time: newTime ?? time,
      likeCount: newLikeCount ?? likeCount,
      commentCount: newCommentCount ?? commentCount,
      shareCount: newShareCount ?? shareCount,
      liked: newLiked ?? liked,
      comments: newComments ?? comments,
      contentType: newContentType ?? contentType,
      imageUrl: newImageUrl ?? imageUrl,
      videoUrl: newVideoUrl ?? videoUrl,
    );
  }
}
