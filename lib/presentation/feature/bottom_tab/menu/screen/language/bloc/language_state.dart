import 'package:freezed_annotation/freezed_annotation.dart';

part 'language_state.freezed.dart';

@freezed
class LanguageState with _$LanguageState {
  factory LanguageState({
    required bool isLanguageSelecter,
  }) = _LanguageState;

  const LanguageState._();

  factory LanguageState.initial() => LanguageState(
        isLanguageSelecter: false,
      );
}
