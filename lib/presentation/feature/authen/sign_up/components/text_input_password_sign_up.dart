// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_presenter.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/domain/entities/user/sign_up/form_field/password.dart';

class TextInputPasswordSignUp extends BasePage {
  const TextInputPasswordSignUp({Key? key}) : super(key: key);

  @override
  _TextInputPasswordSignUpState createState() =>
      _TextInputPasswordSignUpState();
}

class _TextInputPasswordSignUpState extends State<TextInputPasswordSignUp> {
  final SignUpPresenter _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SignUpPresenter, SignUpState>(
        bloc: _signUpPresenter,
        listenWhen: (SignUpState previous, SignUpState current) =>
            (previous.password != current.password),
        listener: (BuildContext context, SignUpState state) {},
        builder: (BuildContext context, SignUpState state) => TextInputCustom(
          hintText: AppLocalizations.of(context)!.text_login_enter_password,
          labelText: AppLocalizations.of(context)!.text_login_password,
          onChanged: (String text) => _signUpPresenter.passwordChanged(text),
          errorMessage: state.password.error?.description,
          isPasswordField: !state.isStatusPassword,
          suffixIcon: IconButton(
            icon: Icon(
              state.isStatusPassword ? Icons.visibility_off : Icons.visibility,
              color: context.colors.mistyQuartz,
            ),
            onPressed: () => _signUpPresenter.handleVisibilityPassword(),
          ),
          cursorColor: context.colors.backgroundPrimary,
        ),
      );
}
