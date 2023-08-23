import 'package:fbapp/domain/entities/user/info/response/user.dart';

import '../../../injection/injector.dart';
import '../../repositories/auth_preferences_repository.dart';
import '../use_case.dart';

class SaveInfoUserUseCase implements FutureUseCase<User?, void> {
  @override
  Future<void> run(User? input) =>
      injector.get<AuthPreferencesRepository>().setInfoUser(input);
}
