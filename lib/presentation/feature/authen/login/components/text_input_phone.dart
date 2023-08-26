// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_presenter.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputPhoneLogin extends BasePage {
  const TextInputPhoneLogin({Key? key}) : super(key: key);

  @override
  _TextInputPhoneLoginState createState() => _TextInputPhoneLoginState();
}

class _TextInputPhoneLoginState extends State<TextInputPhoneLogin> {
  final LoginPresenter _loginPresenter = injector.get<LoginPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<LoginPresenter, LoginState>(
        bloc: _loginPresenter,
        listenWhen: (LoginState previous, LoginState current) =>
            (previous.status != current.status ||
                previous.phone != current.phone),
        listener: (BuildContext context, LoginState state) {},
        builder: (BuildContext context, LoginState state) {
          String phone = state.phone.value ?? '';
          return TextInputCustom(
            hintText: AppLocalizations.of(context)!.text_login_enter_phone,
            labelText: AppLocalizations.of(context)!.text_login_phone,
            onChanged: (String text) => _loginPresenter.phoneChanged(text),
            errorMessage: state.phone.error?.description,
            keyboardType: TextInputType.phone,
            cursorColor: context.colors.backgroundPrimary,
            value: TextEditingValue(
              text: phone,
              selection: TextSelection(
                baseOffset: phone.length,
                extentOffset: phone.length,
              ),
            ),
            filled: true,
            fillColor: Colors.white,
          );
        },
      );
}
