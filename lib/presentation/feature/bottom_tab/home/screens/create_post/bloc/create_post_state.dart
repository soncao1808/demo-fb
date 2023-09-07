import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _CreatePostState;

  const CreatePostState._();

  factory CreatePostState.initial() => CreatePostState(
        status: CreatePostPageStatus.CreatePostLoading,
        content: '',
        selectPrivacy: 0,
      );
}
