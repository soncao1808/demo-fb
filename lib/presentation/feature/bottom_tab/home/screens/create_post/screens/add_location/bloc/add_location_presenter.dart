import 'package:fbapp/data/models/location/location.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/bloc/create_post_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_location_state.dart';

class AddLocationPresenter extends Cubit<AddLocationState> {
  AddLocationPresenter(
    this._createPost, {
    @visibleForTesting AddLocationState? state,
  }) : super(state ?? AddLocationState.initial());
  final CreatePostPresenter _createPost;

  void resetState() {
    emit(AddLocationState.initial());
  }

  void init(Location? defaultLocation) {
    Future.delayed(const Duration(seconds: 1), () {
      emit(state.copyWith(listLocation: [
        const Location(
          id: 0,
          name: "Location test 1",
          description: "Description test 1",
        ),
        const Location(
          id: 1,
          name: "Location test 2",
          description: "Description test 2",
        ),
      ]));
      emit(state.copyWith(
        status: AddLocationPageStatus.addLocationLoaded,
        selectLocation: defaultLocation,
      ));
    });
  }

  void updateSearchValue(String val) {
    emit(state.copyWith(searchValue: val));
  }

  void updateSelectLocation(Location? val) {
    emit(state.copyWith(selectLocation: val));
  }

  void handleNext() {
    _createPost.handleSelectLocations(state.selectLocation);
  }
}
