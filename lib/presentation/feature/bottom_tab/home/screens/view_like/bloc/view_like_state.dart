import 'package:fbapp/data/models/post/user_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_like_state.freezed.dart';

enum ViewLikePageStatus {
  viewLikeLoading,
  viewLikeLoaded,
}

@freezed
class ViewLikeState with _$ViewLikeState {
  factory ViewLikeState({
    required ViewLikePageStatus status,
    required List<UserPost> listViewLike,
  }) = _ViewLikeState;

  const ViewLikeState._();

  factory ViewLikeState.initial() => ViewLikeState(
        status: ViewLikePageStatus.viewLikeLoading,
        listViewLike: <UserPost>[],
      );
}
