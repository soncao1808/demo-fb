import 'package:freezed_annotation/freezed_annotation.dart';
<<<<<<< HEAD
import 'package:fbapp/domain/entities/user/info/response/user.dart';
=======
import '../../../../../domain/entities/user/info/response/user.dart';
>>>>>>> d5cdd90 (create ui menu page)

part 'menu_state.freezed.dart';

@freezed
class MenuState with _$MenuState {
  factory MenuState({
    required bool isStatusLogout,
<<<<<<< HEAD
=======
    required bool isStatusLoadingUploadImage,
    required String urlImage,
>>>>>>> d5cdd90 (create ui menu page)
    required User? infoUser,
  }) = _MenuState;

  const MenuState._();

  factory MenuState.initial() => MenuState(
        isStatusLogout: false,
<<<<<<< HEAD
=======
        isStatusLoadingUploadImage: false,
        urlImage: '',
>>>>>>> d5cdd90 (create ui menu page)
        infoUser: null,
      );
}
