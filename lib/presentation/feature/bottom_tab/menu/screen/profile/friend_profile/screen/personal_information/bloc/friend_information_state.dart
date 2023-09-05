import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'friend_information_state.freezed.dart';

@freezed
class FriendInformationState with _$FriendInformationState {
  factory FriendInformationState({
    FriendUiModel? user,
  }) = _FriendInformationState;

  const FriendInformationState._();

  factory FriendInformationState.initial() => FriendInformationState();
}
