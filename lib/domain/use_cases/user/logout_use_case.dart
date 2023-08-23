import 'package:fbapp/domain/repositories/user_repository.dart';
import 'package:fbapp/injection/injector.dart';

class LogoutUseCase {
  @override
  Future<void> run() => injector.get<UserRepository>().logout();
}
