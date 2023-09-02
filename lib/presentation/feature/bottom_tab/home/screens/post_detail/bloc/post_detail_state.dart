import 'package:fbapp/data/models/post/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_detail_state.freezed.dart';

enum PostDetailPageStatus {
  postDetailLoading,
  postDetailLoaded,
}

@freezed
class PostDetailState with _$PostDetailState {
  factory PostDetailState({
    required PostDetailPageStatus status,
    required Post? postDetail,
  }) = _PostDetailState;

  const PostDetailState._();

  factory PostDetailState.initial() => PostDetailState(
        status: PostDetailPageStatus.postDetailLoading,
        postDetail: null,
      );
}
