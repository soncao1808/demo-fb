import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_personal_story_state.freezed.dart';

@freezed
class EditPersonalStoryState with _$EditPersonalStoryState {
  factory EditPersonalStoryState({
    String? story,
  }) = _EditPersonalStoryState;

  const EditPersonalStoryState._();

  factory EditPersonalStoryState.initial() => EditPersonalStoryState(
        story: null,
      );
}
