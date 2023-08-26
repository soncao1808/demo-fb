import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/list_block/bloc/user_block_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserBlockPresenter extends Cubit<UserBlockState> {
  UserBlockPresenter({
    @visibleForTesting UserBlockState? state,
  }) : super(state ?? UserBlockState.initial());

  void clearState() {
    emit(UserBlockState.initial());
  }
}
