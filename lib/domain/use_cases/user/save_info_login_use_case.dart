import 'package:fbapp/domain/repositories/auth_preferences_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class SaveInfoLoginUseCase implements UseCase<String, void> {
  @override
  void run(String input) =>
      injector.get<AuthPreferencesRepository>().setPhone(input);
}
