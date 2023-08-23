import 'package:fbapp/domain/entities/user/info/response/user.dart';

import '../../../injection/injector.dart';
import '../../repositories/auth_preferences_repository.dart';
import '../use_case.dart';

class GetInfoUserLocalUseCase implements OutputUseCase<User?> {
  @override
  User? run() =>
      injector.get<AuthPreferencesRepository>().getInfoUserFromLocal();
}
