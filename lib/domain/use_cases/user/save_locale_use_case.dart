import '../../../injection/injector.dart';
import '../../repositories/auth_preferences_repository.dart';
import '../use_case.dart';

class SaveLocaleUseCase implements FutureUseCase<String, void> {
  @override
  Future<void> run(String input) =>
      injector.get<AuthPreferencesRepository>().setLocale(input);
}
