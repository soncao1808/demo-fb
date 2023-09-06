import 'package:fbapp/data/models/post/user_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'view_share_state.freezed.dart';

enum ViewSharePageStatus {
  ViewShareLoading,
  ViewShareLoaded,
}

@freezed
class ViewShareState with _$ViewShareState {
  factory ViewShareState({
    required ViewSharePageStatus status,
    required List<UserPost> listViewShare,
  }) = _ViewShareState;

  const ViewShareState._();

  factory ViewShareState.initial() => ViewShareState(
        status: ViewSharePageStatus.ViewShareLoading,
        listViewShare: <UserPost>[],
      );
}
