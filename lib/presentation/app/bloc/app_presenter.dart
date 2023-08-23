import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/domain/use_cases/user/get_locale_use_case.dart';
import 'package:fbapp/domain/use_cases/user/save_locale_use_case.dart';
import 'package:intl/intl.dart';

import 'app_state.dart';

class AppPresenter extends Cubit<AppState> {
  AppPresenter(
    this._saveLocaleUseCase,
    this._getLocaleUseCase, {
    @visibleForTesting AppState? state,
  }) : super(state ?? AppState.initial());
  final SaveLocaleUseCase _saveLocaleUseCase;
  final GetLocaleUseCase _getLocaleUseCase;

  void init() {
    final String locale =
        _getLocaleUseCase.run() ?? Locales.vietnamese.value.code;
    emit(state.copyWith(locale: Locale(locale)));
  }

  void setLocale(String locale) {
    _saveLocaleUseCase.run(locale);
    Intl.defaultLocale = locale;
    emit(state.copyWith(locale: Locale(locale)));
  }

  String get codeEnglish => Locales.english.value.code;

  String get codeVietnamese => Locales.vietnamese.value.code;

  String get language => state.locale.languageCode;

  bool get isCheckLanguageVN => state.locale.languageCode == codeVietnamese;
}
