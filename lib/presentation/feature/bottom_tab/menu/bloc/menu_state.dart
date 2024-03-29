import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';

part 'menu_state.freezed.dart';

@freezed
class MenuState with _$MenuState {
  factory MenuState({
    required bool isStatusLogout,
    required bool isStatusLoadingUploadImage,
    required String urlImage,
    required User? infoUser,
  }) = _MenuState;

  const MenuState._();

  factory MenuState.initial() => MenuState(
        isStatusLogout: false,
        isStatusLoadingUploadImage: false,
        urlImage: '',
        infoUser: null,
      );
}
