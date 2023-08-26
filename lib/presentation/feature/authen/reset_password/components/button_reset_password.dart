// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/reset_password/bloc/reset_password_presenter.dart';
import 'package:fbapp/presentation/feature/authen/reset_password/bloc/reset_password_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonResetPassword extends BasePage {
  final int? userId;
  final String? code;
  const ButtonResetPassword({
    Key? key,
    this.userId,
    this.code,
  }) : super(key: key);

  @override
  _ButtonResetPasswordState createState() => _ButtonResetPasswordState();
}

class _ButtonResetPasswordState extends State<ButtonResetPassword> {
  final ResetPasswordPresenter _resetPasswordPresenter =
      injector.get<ResetPasswordPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ResetPasswordPresenter, ResetPasswordState>(
        bloc: _resetPasswordPresenter,
        listenWhen: (ResetPasswordState previous, ResetPasswordState current) =>
            (previous != current),
        listener: (BuildContext context, ResetPasswordState state) {},
        builder: (BuildContext context, ResetPasswordState state) =>
            PrimaryButton(
          title: AppLocalizations.of(context)!.text_common_complete,
          isLoading: state.isLoadingResetPassword,
          isDisable: _resetPasswordPresenter.isDisable,
          onPressed: () {
            _resetPasswordPresenter.handleResetPassword(
              widget.userId!,
              widget.code!,
            );
          },
        ),
      );
}
