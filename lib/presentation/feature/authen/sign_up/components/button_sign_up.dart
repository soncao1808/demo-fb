// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_presenter.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonSignUp extends BasePage {
  const ButtonSignUp({Key? key}) : super(key: key);

  @override
  _ButtonSignUpState createState() => _ButtonSignUpState();
}

class _ButtonSignUpState extends State<ButtonSignUp> {
  final SignUpPresenter _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpPresenter, SignUpState>(
        bloc: _signUpPresenter,
        listener: (BuildContext context, SignUpState state) {},
        builder: (BuildContext context, SignUpState state) {
          return PrimaryButton(
            title: AppLocalizations.of(context)!.text_sign_up_register,
            isLoading: state.isLoadingSignUp,
            isDisable: _signUpPresenter.isDisable,
            onPressed: () {
              _signUpPresenter.handleSignUp();
            },
          );
        });
  }
}
