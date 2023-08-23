import 'package:fbapp/domain/repositories/auth_preferences_repository.dart';
import 'package:fbapp/domain/use_cases/use_case.dart';
import 'package:fbapp/injection/injector.dart';

class GetInfoLoginUseCase implements OutputUseCase<String?> {
  @override
  String? run() => injector.get<AuthPreferencesRepository>().getPhone();
}
