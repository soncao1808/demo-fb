import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_followed_state.freezed.dart';

@freezed
class MyFollowedState with _$MyFollowedState {
  factory MyFollowedState({
    required List<FriendUiModel> friends,
    required String searchText,
  }) = _MyFollowedState;

  const MyFollowedState._();

  factory MyFollowedState.initial() => MyFollowedState(
        friends: <FriendUiModel>[],
        searchText: '',
      );
}
