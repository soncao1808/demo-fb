// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/bloc/forgot_password_presenter.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/bloc/forgot_password_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonForgotPassword extends BasePage {
  final bool isFogotPassword;
  const ButtonForgotPassword({
    Key? key,
    required this.isFogotPassword,
  }) : super(key: key);

  @override
  _ButtonForgotPasswordState createState() => _ButtonForgotPasswordState();
}

class _ButtonForgotPasswordState extends State<ButtonForgotPassword> {
  final ForgotPasswordPresenter _forgotPasswordPresenter =
      injector.get<ForgotPasswordPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ForgotPasswordPresenter, ForgotPasswordState>(
        bloc: _forgotPasswordPresenter,
        listenWhen:
            (ForgotPasswordState previous, ForgotPasswordState current) =>
                (previous.phone != current.phone),
        listener: (BuildContext context, ForgotPasswordState state) {},
        builder: (BuildContext context, ForgotPasswordState state) =>
            PrimaryButton(
          title: AppLocalizations.of(context)!.text_common_next,
          isLoading: state.isLoadingForgotPassword,
          isDisable: _forgotPasswordPresenter.isDisable,
          onPressed: () {
            _forgotPasswordPresenter
                .handleForgotPassword(widget.isFogotPassword);
          },
        ),
      );
}
