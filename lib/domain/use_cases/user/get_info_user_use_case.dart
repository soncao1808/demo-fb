import 'package:fbapp/domain/entities/user/info/response/user.dart';

import '../../../injection/injector.dart';
import '../../repositories/user_repository.dart';
import '../use_case.dart';

class GetInfoUserUseCase implements FutureOutputUseCase<User> {
  @override
  Future<User> run() => injector.get<UserRepository>().getInfoUser();
}
