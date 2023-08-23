import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPagePresenter extends Cubit<MainPageState> {
  MainPagePresenter({
    @visibleForTesting MainPageState? state,
  }) : super(MainPageState.initial());
  final HomePresenter _homePresenter = injector.get<HomePresenter>();
  void onChangeTab(MainPageBottom item) => emit(state.copyWith(tabItem: item));

  void cleanState() {
    emit(MainPageState.initial());
  }
}
