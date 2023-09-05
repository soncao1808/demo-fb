import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_profile_state.freezed.dart';

@freezed
class FriendProfileState with _$FriendProfileState {
  factory FriendProfileState({
    FriendUiModel? user,
  }) = _FriendProfileState;

  const FriendProfileState._();

  factory FriendProfileState.initial() => FriendProfileState();
}
