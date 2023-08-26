// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_presenter.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/repeat_password_field.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputRepeatPasswordSignUp extends BasePage {
  const TextInputRepeatPasswordSignUp({Key? key}) : super(key: key);

  @override
  _TextInputRepeatPasswordSignUpState createState() =>
      _TextInputRepeatPasswordSignUpState();
}

class _TextInputRepeatPasswordSignUpState
    extends State<TextInputRepeatPasswordSignUp> {
  final SignUpPresenter _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SignUpPresenter, SignUpState>(
        bloc: _signUpPresenter,
        listenWhen: (SignUpState previous, SignUpState current) =>
            (previous.status != current.status ||
                previous.isStatusRepeatPassword !=
                    current.isStatusRepeatPassword),
        listener: (BuildContext context, SignUpState state) {},
        builder: (BuildContext context, SignUpState state) => TextInputCustom(
          hintText:
              AppLocalizations.of(context)!.text_sign_up_enter_confirm_password,
          labelText:
              AppLocalizations.of(context)!.text_sign_up_confirm_password,
          onChanged: (String text) =>
              _signUpPresenter.repeatPasswordChanged(text),
          errorMessage: state.repeatPassword.error?.description,
          isPasswordField: !state.isStatusRepeatPassword,
          suffixIcon: IconButton(
            icon: Icon(
              !state.isStatusRepeatPassword
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: context.colors.mistyQuartz,
            ),
            onPressed: () => _signUpPresenter.handleVisibilityRepeatPassword(),
          ),
          cursorColor: context.colors.backgroundPrimary,
        ),
      );
}
