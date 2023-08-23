import 'package:fbapp/domain/entities/user/info/response/user.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_local_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_info_user_use_case.dart';

class Session {
  final GetInfoUserLocalUseCase _getInfoUseCase;
  final SaveInfoUserUseCase _saveInfoUseCase;

  const Session(
    this._getInfoUseCase,
    this._saveInfoUseCase,
  );

  User? get user => _getInfoUseCase.run();

  set user(User? user) {
    void saveAsync() async {
      await _saveInfoUseCase.run(user);
    }

    saveAsync();
  }

  User get userForce => _getInfoUseCase.run()!;
  bool get hasLogin => user != null;
}
