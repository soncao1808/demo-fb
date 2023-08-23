import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fbapp/domain/entities/user/info/response/user.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  factory AccountState({
    required bool isStatusLogout,
    required bool isStatusLoadingUploadImage,
    required String urlImage,
    required User? infoUser,
  }) = _AccountState;

  const AccountState._();

  factory AccountState.initial() => AccountState(
        isStatusLogout: false,
        isStatusLoadingUploadImage: false,
        urlImage: '',
        infoUser: null,
      );
}
