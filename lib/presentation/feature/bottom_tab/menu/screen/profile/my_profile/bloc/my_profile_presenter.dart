import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_profile_state.dart';

class MyProfilePresenter extends Cubit<MyProfileState> {
  MyProfilePresenter({
    @visibleForTesting MyProfileState? state,
  }) : super(state ?? MyProfileState.initial());

  void init() {}

  void resetState() {
    emit(MyProfileState.initial());
  }
}
