import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_profile_state.freezed.dart';

@freezed
class MyProfileState with _$MyProfileState {
  factory MyProfileState({
    UserUiModel? user,
  }) = _MyProfileState;

  const MyProfileState._();

  factory MyProfileState.initial() => MyProfileState();
}
