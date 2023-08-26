import 'package:dio/dio.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/bloc/delete_account_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../../../../core/shared/session.dart';
import '../../../../../../../main/bloc/main_page_state.dart';

class DeletedAccountPresenter extends Cubit<DeleteAcountState> {
  DeletedAccountPresenter(
    this._session, {
    @visibleForTesting DeleteAcountState? state,
  }) : super(state ?? DeleteAcountState.initial());

  final Session _session;

  void clearState() {
    emit(DeleteAcountState.initial());
  }

  void init() {}

  void deleteAccountUser() async {
    try {
      emit(state.copyWith(isStatusLoadingdeleteAccount: true));

      // if (context.mounted) Navigator.pop(context);
      emit(state.copyWith(isStatusLoadingdeleteAccount: false));
    } catch (error) {
      emit(state.copyWith(isStatusLoadingdeleteAccount: false));
      if (error is DioError) {
        // String errorsPassword =
        //     error.response?.data?['errors']?['current_password'] ?? '';

        // String errorMessage = LanguageHelper.of(context)
        //     .getLocalText("change password $errorsPassword");

        //  return showPopup(error: errorMessage);
      } else {
        showPopup(error: AppLocalizations.of(context)!.text_common_error);
      }
    }
  }
}
