// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageHelper {
  static _LanguageHelper of(BuildContext context) => _LanguageHelper(
        context: context,
      );
}

class _LanguageHelper {
  const _LanguageHelper({
    required BuildContext context,
  });

  String getLocalText(String text) {
    switch (text) {
      case 'code không khớp':
        return "Mã xác nhận không đúng.";
      case 'đã được xác minh':
        return "Tài khoản đã được xác minh.";
      default:
        return AppLocalizations.of(context)!.text_common_error;
    }
  }
}
