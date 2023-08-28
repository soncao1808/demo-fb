// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';

part 'shop_state.freezed.dart';

enum ShopPageStatus {
  listBannerLoading,
  listBannerLoaded,
}

enum ModuleTypeCart {
  Service,
  PackService,
  PrepaidCard,
}

@freezed
class ShopState with _$ShopState {
  factory ShopState({
    required ShopPageStatus status,
    required User? infoUser,
  }) = _ShopState;

  const ShopState._();

  factory ShopState.initial() => ShopState(
        status: ShopPageStatus.listBannerLoaded,
        infoUser: null,
      );
}
