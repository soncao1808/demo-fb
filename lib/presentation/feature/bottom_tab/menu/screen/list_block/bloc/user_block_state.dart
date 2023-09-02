import 'package:fbapp/data/models/user/user_block/response/user_block.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_block_state.freezed.dart';

@freezed
class UserBlockState with _$UserBlockState {
  factory UserBlockState({
    required List<UserBlock> listUser,
    required bool isListUsernLoading,
    required int pageSize,
    required int totalPage,
    required int page,
    required bool status,
  }) = _UserBlockState;

  const UserBlockState._();

  factory UserBlockState.initial() => UserBlockState(
        listUser: const <UserBlock>[
          UserBlock(id: 1, name: 'Dong', idUser: 1, avatar: ''),
          UserBlock(id: 1, name: 'Dong', idUser: 1, avatar: ''),
          UserBlock(id: 1, name: 'Dong', idUser: 1, avatar: ''),
          UserBlock(id: 1, name: 'Dong', idUser: 1, avatar: ''),
          UserBlock(id: 1, name: 'Dong', idUser: 1, avatar: '')
        ],
        isListUsernLoading: false,
        pageSize: 15,
        totalPage: 0,
        page: 1,
        status: false,
      );
}
