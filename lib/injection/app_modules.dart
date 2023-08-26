import 'package:dio/dio.dart';
import 'package:fbapp/core/shared/session.dart';
import 'package:fbapp/data/repositories/upload_file_repository_implement.dart';
import 'package:fbapp/domain/repositories/upload_file_repository.dart';
import 'package:fbapp/domain/use_cases/user/change_password_use_case.dart';
import 'package:fbapp/domain/use_cases/user/clear_auth_preferences_use_case.dart';
import 'package:fbapp/domain/use_cases/user/forgot_use_case.dart';
import 'package:fbapp/domain/use_cases/user/get_access_token_use_case.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_local_use_case.dart';
import 'package:fbapp/domain/use_cases/user/get_info_user_use_case.dart';
import 'package:fbapp/domain/use_cases/user/get_locale_use_case.dart';
import 'package:fbapp/domain/use_cases/user/login_use_case.dart';
import 'package:fbapp/domain/use_cases/user/logout_use_case.dart';
import 'package:fbapp/domain/use_cases/user/resend_code_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_access_token_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_info_login_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_info_user_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_locale_use_case.dart';
import 'package:fbapp/domain/use_cases/user/sign_up_use_case.dart';
import 'package:fbapp/domain/use_cases/user/verify_code_use_case.dart';
import 'package:fbapp/utilities/constants/api_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './injector.dart';
import '../data/repositories/auth_preferences_repository_implement.dart';
import '../data/repositories/user_preferences_repository_implement.dart';
import '../data/repositories/user_repository_implement.dart';
import '../data/services/network_services/api_client/api_client.dart';
import '../data/services/network_services/interceptor/auth_interceptor.dart';
import '../data/services/network_services/interceptor/logger_interceptor.dart';
import '../domain/repositories/auth_preferences_repository.dart';
import '../domain/repositories/user_preferences_repository.dart';
import '../domain/repositories/user_repository.dart';
import '../utilities/helpers/app_helper/app_flavor_helper.dart';
import '../utilities/helpers/app_helper/app_helper.dart';
import '../utilities/helpers/dialog_helper/loading_full_screen_helper.dart';
import '../utilities/helpers/error_helper/error_helper.dart';
import '../utilities/helpers/logger_helper/logger_helper.dart';
import '../utilities/helpers/validator_helper/validator_helper.dart';

class AppModules {
  static Future<void> inject() async {
    // Share Preferences
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();

    injector.registerLazySingleton<Session>(
      () => Session(
        injector.get<GetInfoUserLocalUseCase>(),
        injector.get<SaveInfoUserUseCase>(),
      ),
    );

    injector.registerLazySingleton<AuthPreferencesRepository>(
      () => AuthPreferencesRepositoryImplement(sharedPreferences),
    );

    injector.registerLazySingleton<UserPreferencesRepository>(
      () => UserPreferencesRepositoryImplement(sharedPreferences),
    );

    // Helpers
    injector.registerLazySingleton<LoggerHelper>(
      () => LoggerHelper(
        isEnabled: injector.get<AppFlavor>().isDevelopment,
      ),
    );

    injector.registerLazySingleton<ErrorHelper>(
      () => ErrorHelper(),
    );

    injector.registerLazySingleton<ValidatorHelper>(
      () => ValidatorHelper(),
    );

    injector.registerLazySingleton<AppHelper>(
      () => AppHelper(),
    );

    injector.registerLazySingleton<LoadingFullScreenHelper>(
      () => LoadingFullScreenHelper(),
    );

    // Http Client
    injector.registerLazySingleton<Dio>(() {
      final Dio dio = Dio();
      dio.options.baseUrl = ApiConstants.apiBaseUrl;
      dio.options.connectTimeout = 6000;
      dio.options.receiveTimeout = 6000;

      dio.interceptors
          .add(AuthInterceptor(injector.get<AuthPreferencesRepository>(), dio));
      if (injector.get<AppFlavor>().isDevelopment) {
        dio.interceptors.add(LoggerInterceptor());
      }

      return dio;
    });

    injector.registerLazySingleton<ApiClient>(
      () => ApiClient(
        injector.get<Dio>(),
        baseUrl: ApiConstants.apiBaseUrl,
      ),
    );

    // Repositories
    injector.registerLazySingleton<UserRepository>(
      () => UserRepositoryImplement(
        injector.get<ApiClient>(),
      ),
    );

    injector.registerLazySingleton<UploadFileRepository>(
      () => UploadFileRepositoryImplement(
        injector.get<ApiClient>(),
      ),
    );

    // Use cases
    injector.registerLazySingleton<LoginUseCase>(
      () => LoginUseCase(),
    );

    injector.registerLazySingleton<SaveAccessTokenUseCase>(
      () => SaveAccessTokenUseCase(),
    );

    injector.registerLazySingleton<GetAccessTokenUseCase>(
      () => GetAccessTokenUseCase(),
    );

    injector.registerLazySingleton<LogoutUseCase>(
      () => LogoutUseCase(),
    );

    injector.registerLazySingleton<ClearAuthPreferencesUseCase>(
      () => ClearAuthPreferencesUseCase(),
    );

    injector.registerLazySingleton<ForgotUseCase>(
      () => ForgotUseCase(),
    );

    injector.registerLazySingleton<GetInfoUserUseCase>(
      () => GetInfoUserUseCase(),
    );

    injector.registerLazySingleton<SaveInfoUserUseCase>(
      () => SaveInfoUserUseCase(),
    );

    injector.registerLazySingleton<GetInfoUserLocalUseCase>(
      () => GetInfoUserLocalUseCase(),
    );

    injector.registerLazySingleton<ChangePasswordUserUseCase>(
      () => ChangePasswordUserUseCase(),
    );

    injector.registerLazySingleton<SaveLocaleUseCase>(
      () => SaveLocaleUseCase(),
    );

    injector.registerLazySingleton<GetLocaleUseCase>(
      () => GetLocaleUseCase(),
    );

    injector.registerLazySingleton<SignUpUseCase>(
      () => SignUpUseCase(),
    );

    injector.registerLazySingleton<VerifyCodeUseCase>(
      () => VerifyCodeUseCase(),
    );
    injector.registerLazySingleton<ResendCodeUseCase>(
      () => ResendCodeUseCase(),
    );
    injector.registerLazySingleton<SaveInfoLoginUseCase>(
      () => SaveInfoLoginUseCase(),
    );
  }
}
