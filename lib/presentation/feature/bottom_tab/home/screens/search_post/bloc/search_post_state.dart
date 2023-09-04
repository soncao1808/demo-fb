import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_post_state.freezed.dart';

enum SearchPostPageStatus {
  searchPostLoading,
  searchPostLoaded,
}

@freezed
class SearchPostState with _$SearchPostState {
  factory SearchPostState({
    required SearchPostPageStatus status,
    required List<Post> listPost,
    required List<User> listUser,
    required String searchText,
    required int tabSelect,
  }) = _SearchPostState;

  const SearchPostState._();

  factory SearchPostState.initial() => SearchPostState(
        status: SearchPostPageStatus.searchPostLoaded,
        listPost: <Post>[],
        listUser: <User>[],
        searchText: '',
        tabSelect: 0,
      );
}
