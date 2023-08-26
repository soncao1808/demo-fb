// ignore_for_file: library_private_types_in_public_api

import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/old_password_field_reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../../../../../injection/injector.dart';
import '../../../../../../../../base/base_page.dart';
import '../../../../../../../../widgets/text_input_custom.dart';
import '../bloc/change_password_presenter.dart';
import '../bloc/change_password_state.dart';

class TextInputOldPasswordAccount extends BasePage {
  const TextInputOldPasswordAccount({Key? key}) : super(key: key);

  @override
  _TextInputOldPasswordAccountState createState() =>
      _TextInputOldPasswordAccountState();
}

class _TextInputOldPasswordAccountState
    extends State<TextInputOldPasswordAccount> {
  final ChangePasswordAccountPresenter _changePasswordPresenter =
      injector.get<ChangePasswordAccountPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ChangePasswordAccountPresenter, ChangePasswordAccountState>(
        bloc: _changePasswordPresenter,
        listenWhen: (ChangePasswordAccountState previous,
                ChangePasswordAccountState current) =>
            (previous.status != current.status ||
                previous.isStatusOldPassword != current.isStatusOldPassword),
        listener: (BuildContext context, ChangePasswordAccountState state) {},
        builder: (BuildContext context, ChangePasswordAccountState state) =>
            TextInputCustom(
          hintText: AppLocalizations.of(context)!
              .text_m_05_reset_password_old_password,
          labelText: AppLocalizations.of(context)!
              .text_m_05_reset_password_old_password,
          onChanged: (String text) =>
              _changePasswordPresenter.oldPasswordChanged(text),
          errorMessage: state.oldPassword.error?.description,
          isPasswordField: state.isStatusOldPassword,
          suffixIcon: IconButton(
            icon: Icon(
              state.isStatusOldPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: context.colors.mistyQuartz,
            ),
            onPressed: () =>
                _changePasswordPresenter.handleVisibilityOldassword(),
          ),
          cursorColor: context.colors.backgroundPrimary,
        ),
      );
}
