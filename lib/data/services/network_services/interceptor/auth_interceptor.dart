// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:fbapp/data/models/auth/auth_token_model.dart';
import 'package:fbapp/domain/repositories/auth_preferences_repository.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app/bloc/app_presenter.dart';
import 'package:fbapp/utilities/constants/api_constants.dart';

class AuthInterceptor extends InterceptorsWrapper {
  AuthInterceptor(this._authPreferencesRepository, this._dio);

  final AuthPreferencesRepository _authPreferencesRepository;
  final Dio _dio;

  _TokenRefreshStatus _tokenRefreshState = _TokenRefreshStatus.none;
  DioError? _tokenRefreshDioError;

  /// Whether request requires authentication or not.
  bool isAuthenticatedPath(RequestOptions options) =>
      !ApiConstants.nonAuthenticatedPaths.contains(options.path);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (isAuthenticatedPath(options) &&
        _authPreferencesRepository.getAccessToken() != null) {
      final String? accessToken = _authPreferencesRepository.getAccessToken();
      options.headers['Authorization'] = '$accessToken';
      options.headers['Accept-Language'] =
          injector.get<AppPresenter>().language;
    }

    handler.next(options);
  }

  void handleLogOut() {}

  void authenticated(DioError err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == HttpStatus.forbidden) {
      handleLogOut();
      handler.reject(err);
    } else {
      _tokenRefreshState = _TokenRefreshStatus.none;
      handler.next(err);
    }
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final RequestOptions requestOptions = err.requestOptions;
    // If it is not an authenticated path or it is
    // not an Unauthorized status code, move forward.
    if (!isAuthenticatedPath(requestOptions) ||
        err.response?.statusCode != HttpStatus.unauthorized) {
      authenticated(err, handler);
      return;
    } else if (_tokenRefreshState.hasExpired) {
      handler.reject(err);
      return;
    } else if (_tokenRefreshState.hasFailed) {
      handler.reject(_tokenRefreshDioError!);
      return;
    }

    // If token update is currently in progress, then we retry all the
    // subsequent requests until the token is updated.
    //
    // Using this boolean to lock requests because of an issue with Dio,
    // even though we use Dio lock()/unlock() methods, we still need a boolean
    // to assert that only one token-refresh operation will occur.
    // See https://github.com/flutterchina/dio/issues/590.
    if (_tokenRefreshState.isInProgress) {
      handler.resolve(await _dio.fetch(requestOptions));
      return;
    }

    // Lock all requests.
    _dio.lock();
    _tokenRefreshState = _TokenRefreshStatus.inProgress;

    try {
      final AuthTokenModel tokens = await _getNewAuthTokens(requestOptions);
      await _saveAuthTokensAndRetryCurrentRequest(
          tokens, requestOptions, handler);
    } on DioError catch (e) {
      if (e.response?.statusCode == HttpStatus.unauthorized) {
        _tokenRefreshState = _TokenRefreshStatus.expired;
        await _clearUserSession();
      } else {
        _tokenRefreshState = _TokenRefreshStatus.failed;
        _tokenRefreshDioError = e;
        handler.reject(e);
      }
    }
  }

  Future _saveAuthTokensAndRetryCurrentRequest(
    AuthTokenModel authTokenModel,
    RequestOptions requestOptions,
    ErrorInterceptorHandler handler,
  ) async {
    await _authPreferencesRepository.setAccessToken(authTokenModel.accessToken);
    await _authPreferencesRepository
        .setRefreshToken(authTokenModel.refreshToken);

    // Unlock all requests.
    _dio.unlock();

    // Update headers and retry the first failed request.
    requestOptions.headers['Authorization'] =
        'Bearer ${authTokenModel.accessToken}';
    handler.resolve(await _dio.fetch(requestOptions));
  }

  Future _clearUserSession() async {
    // Clear all requests in the queue and unlock client.
    _dio
      ..clear()
      ..unlock();

    await _authPreferencesRepository.clearAll();
  }

  /// TODO: - Call API to refresh token
  Future<AuthTokenModel> _getNewAuthTokens(
          RequestOptions requestOptions) async =>
      const AuthTokenModel(
        accessToken: '',
        refreshToken: '',
        tokenType: '',
        expiresIn: 0,
      );
}

enum _TokenRefreshStatus {
  /// Default state. No ongoing token-refresh operation.
  none,

  /// Some other error while refreshing token.
  failed,

  /// Token refresh returned 401.
  expired,

  /// Token refresh is in progress.
  inProgress,
}

extension _TokenStatus on _TokenRefreshStatus {
  bool get hasExpired => this == _TokenRefreshStatus.expired;

  bool get isInProgress => this == _TokenRefreshStatus.inProgress;

  bool get hasFailed => this == _TokenRefreshStatus.failed;
}
