import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_follower_state.freezed.dart';

@freezed
class MyFollowerState with _$MyFollowerState {
  factory MyFollowerState({
    required List<FriendUiModel> friends,
    required String searchText,
  }) = _MyFollowerState;

  const MyFollowerState._();

  factory MyFollowerState.initial() => MyFollowerState(
        friends: <FriendUiModel>[],
        searchText: '',
      );
}
