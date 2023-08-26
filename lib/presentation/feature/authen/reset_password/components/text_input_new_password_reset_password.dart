// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/reset_password/bloc/reset_password_presenter.dart';
import 'package:fbapp/presentation/feature/authen/reset_password/bloc/reset_password_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/domain/entities/user/reset_password/form_field/new_password_field_reset_password.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputNewPasswordResetPassword extends BasePage {
  const TextInputNewPasswordResetPassword({Key? key}) : super(key: key);

  @override
  _TextInputNewPasswordResetPasswordState createState() =>
      _TextInputNewPasswordResetPasswordState();
}

class _TextInputNewPasswordResetPasswordState
    extends State<TextInputNewPasswordResetPassword> {
  final ResetPasswordPresenter _resetPasswordPresenter =
      injector.get<ResetPasswordPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ResetPasswordPresenter, ResetPasswordState>(
        bloc: _resetPasswordPresenter,
        listenWhen: (ResetPasswordState previous, ResetPasswordState current) =>
            (previous.status != current.status ||
                previous.isStatusNewPassword != current.isStatusNewPassword),
        listener: (BuildContext context, ResetPasswordState state) {},
        builder: (BuildContext context, ResetPasswordState state) =>
            TextInputCustom(
          hintText: AppLocalizations.of(context)!.text_login_enter_password,
          labelText: AppLocalizations.of(context)!.text_login_password,
          onChanged: (String text) =>
              _resetPasswordPresenter.newPasswordChanged(text),
          errorMessage: state.newPassword.error?.description,
          isPasswordField: !state.isStatusNewPassword,
          suffixIcon: IconButton(
            icon: Icon(
              !state.isStatusNewPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: context.colors.mistyQuartz,
            ),
            onPressed: () =>
                _resetPasswordPresenter.handleVisibilityNewPassword(),
          ),
          cursorColor: context.colors.backgroundPrimary,
        ),
      );
}
