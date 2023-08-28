// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_presenter.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonLogin extends BasePage {
  const ButtonLogin({Key? key}) : super(key: key);

  @override
  _ButtonLoginState createState() => _ButtonLoginState();
}

class _ButtonLoginState extends State<ButtonLogin> {
  final LoginPresenter _loginPresenter = injector.get<LoginPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<LoginPresenter, LoginState>(
        bloc: _loginPresenter,
        listenWhen: (LoginState previous, LoginState current) =>
            (previous.phone != current.phone ||
                previous.password != current.password ||
                previous.isLoadingLogin != current.isLoadingLogin),
        listener: (BuildContext context, LoginState state) {},
        builder: (BuildContext context, LoginState state) => PrimaryButton(
          title: AppLocalizations.of(context)!.text_login_signin,
          isLoading: state.isLoadingLogin,
          // isDisable: _loginPresenter.isDisable,
          // onPressed: () => _loginPresenter.handleLogin(),
          onPressed: () => _loginPresenter.handleLoginSuccess(),
        ),
      );
}
