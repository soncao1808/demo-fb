// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';

part 'home_state.freezed.dart';

enum HomePageStatus {
  listBannerLoading,
  listBannerLoaded,
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
  }) = _HomeState;

  const HomeState._();

  factory HomeState.initial() => HomeState(
        status: HomePageStatus.listBannerLoaded,
        infoUser: null,
      );
}
