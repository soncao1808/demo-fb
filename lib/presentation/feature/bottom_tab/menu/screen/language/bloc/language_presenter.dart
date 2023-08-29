import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/language/bloc/language_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguagePresenter extends Cubit<LanguageState> {
  LanguagePresenter({
    @visibleForTesting LanguageState? state,
  }) : super(state ?? LanguageState.initial());

  void init() {}

  void handerSelecterLanguage() {}
}
