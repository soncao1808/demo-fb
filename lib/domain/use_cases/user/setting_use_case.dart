import '../../../injection/injector.dart';
import '../../entities/setting/setting_request.dart';
import '../../repositories/user_repository.dart';
import '../use_case.dart';

class SettingUseCase implements FutureUseCase<SettingRequest, void> {
  @override
  Future<void> run(SettingRequest input) =>
      injector.get<UserRepository>().setting(input);
}
