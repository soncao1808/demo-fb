import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_tag_state.freezed.dart';

enum AddTagPageStatus {
  addTagLoading,
  addTagLoaded,
}

@freezed
class AddTagState with _$AddTagState {
  factory AddTagState({
    required AddTagPageStatus status,
    required List<UserTag> listTag,
    required String searchValue,
    required List<UserTag> selectTag,
  }) = _AddTagState;

  const AddTagState._();

  factory AddTagState.initial() => AddTagState(
        status: AddTagPageStatus.addTagLoading,
        listTag: <UserTag>[],
        searchValue: '',
        selectTag: <UserTag>[],
      );
}
