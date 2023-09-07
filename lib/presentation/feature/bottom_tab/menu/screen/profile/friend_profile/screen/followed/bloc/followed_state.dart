import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'followed_state.freezed.dart';

@freezed
class FollowedState with _$FollowedState {
  factory FollowedState({
    required List<FriendUiModel> friends,
    required String searchText,
  }) = _FollowedState;

  const FollowedState._();

  factory FollowedState.initial() => FollowedState(
        friends: <FriendUiModel>[],
        searchText: '',
      );
}
