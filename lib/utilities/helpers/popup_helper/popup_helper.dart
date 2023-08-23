import 'package:flutter/material.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/custom_popup.dart';
import 'package:fbapp/presentation/widgets/popup_error.dart';
import 'package:fbapp/presentation/widgets/popup_success.dart';

class PopupHelper {
  void showPopUpError(String title) async {
    Navigator.push(
      context,
      CustomPopup(
        body: const PopupError(),
        opacity: 0,
        title: title,
      ),
    );
    await Future<dynamic>.delayed(const Duration(milliseconds: 1700));
    if (context.mounted) Navigator.pop(context);
  }

  void showPopUpSuccess(String title) async {
    Navigator.push(
      context,
      CustomPopup(
        body: PopupSuccess(
          title: title,
        ),
        opacity: 0,
      ),
    );
    await Future<dynamic>.delayed(const Duration(milliseconds: 1700));
    if (context.mounted) Navigator.pop(context);
  }
}
