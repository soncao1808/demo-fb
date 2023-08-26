import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'language_state.dart';

class LanguagePresenter extends Cubit<LanguageState> {
  LanguagePresenter({
    @visibleForTesting LanguageState? state,
  }) : super(state ?? LanguageState.initial());

  void init() {}

  void handerSelecterLanguage() {}
}
