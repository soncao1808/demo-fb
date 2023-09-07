import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'follower_state.freezed.dart';

@freezed
class FollowerState with _$FollowerState {
  factory FollowerState({
    required List<FriendUiModel> friends,
    required String searchText,
  }) = _FollowerState;

  const FollowerState._();

  factory FollowerState.initial() => FollowerState(
        friends: <FriendUiModel>[],
        searchText: '',
      );
}
