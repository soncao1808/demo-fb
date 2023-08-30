// ignore_for_file: constant_identifier_names

import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomePageStatus {
  listPostLoading,
  listPostLoadmore,
  listPostLoaded,
}

enum ModuleTypeCart {
  Service,
  PackService,
  PrepaidCard,
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    required HomePageStatus status,
    required User? infoUser,
    required List<Post> listPost,
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => HomeState(
        status: HomePageStatus.listPostLoading,
        infoUser: null,
        listPost: <Post>[],
      );
}
