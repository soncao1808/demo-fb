import 'package:fbapp/data/models/location/location.dart';
import 'package:fbapp/data/models/react/react.dart';
import 'package:fbapp/data/models/user_tag/user_tag.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

part 'create_post_state.freezed.dart';

enum CreatePostPageStatus {
  CreatePostLoading,
  CreatePostLoaded,
}

@freezed
class CreatePostState with _$CreatePostState {
  factory CreatePostState({
    required CreatePostPageStatus status,
    required String content,
    required int selectPrivacy,
    required List<XFile> selectMedias,
    required List<UserTag> tagFriends,
    required Location? selectLocations,
    required React? selectReact,
  }) = _CreatePostState;

  const CreatePostState._();

  factory CreatePostState.initial() => CreatePostState(
        status: CreatePostPageStatus.CreatePostLoading,
        content: '',
        selectPrivacy: 0,
        selectMedias: [],
        tagFriends: [],
        selectLocations: null,
        selectReact: null,
      );
}
