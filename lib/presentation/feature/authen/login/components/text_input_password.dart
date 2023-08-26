// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_presenter.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/domain/entities/user/login/form_field/password.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputPasswordLogin extends BasePage {
  const TextInputPasswordLogin({Key? key}) : super(key: key);

  @override
  _TextInputPasswordLoginState createState() => _TextInputPasswordLoginState();
}

class _TextInputPasswordLoginState extends State<TextInputPasswordLogin> {
  final LoginPresenter _loginPresenter = injector.get<LoginPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<LoginPresenter, LoginState>(
        bloc: _loginPresenter,
        listenWhen: (LoginState previous, LoginState current) =>
            (previous.status != current.status ||
                previous.isStatusPassword != current.isStatusPassword ||
                previous.password != current.password),
        listener: (BuildContext context, LoginState state) {},
        builder: (BuildContext context, LoginState state) {
          final String value = state.password.value ?? '';
          return TextInputCustom(
            hintText: AppLocalizations.of(context)!.text_login_enter_password,
            labelText: AppLocalizations.of(context)!.text_login_password,
            onChanged: (String text) => _loginPresenter.passwordChanged(text),
            errorMessage: state.password.error?.description,
            isPasswordField: !state.isStatusPassword,
            suffixIcon: IconButton(
              icon: Icon(
                state.isStatusPassword
                    ? Icons.visibility_off
                    : Icons.visibility,
                color: context.colors.mistyQuartz,
              ),
              onPressed: () => _loginPresenter.handleVisibilityPassword(),
            ),
            cursorColor: context.colors.backgroundPrimary,
            value: TextEditingValue(
              text: value,
              selection: TextSelection(
                baseOffset: value.length,
                extentOffset: value.length,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          );
        },
      );
}
