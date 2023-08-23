import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_state.freezed.dart';

enum Locales {
  vietnamese(NamedLocale('vi', 'Vietnamese')),
  english(NamedLocale('en', 'English'));

  final NamedLocale value;
  const Locales(this.value);
}

@freezed
class AppState with _$AppState {
  factory AppState({
    required Locale locale,
  }) = _AppState;

  const AppState._();

  factory AppState.initial() => AppState(
        locale: Locale(
          Locales.vietnamese.value.code,
        ),
      );
}
