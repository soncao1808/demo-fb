// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_presenter.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextInputPhoneSignUp extends BasePage {
  const TextInputPhoneSignUp({Key? key}) : super(key: key);

  @override
  _TextInputPhoneSignUpState createState() => _TextInputPhoneSignUpState();
}

class _TextInputPhoneSignUpState extends State<TextInputPhoneSignUp> {
  final SignUpPresenter _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SignUpPresenter, SignUpState>(
        bloc: _signUpPresenter,
        listenWhen: (SignUpState previous, SignUpState current) =>
            (previous.phone != current.phone),
        listener: (BuildContext context, SignUpState state) {},
        builder: (BuildContext context, SignUpState state) => TextInputCustom(
          hintText: AppLocalizations.of(context)!.text_login_enter_phone,
          labelText: AppLocalizations.of(context)!.text_login_phone,
          onChanged: (String text) => _signUpPresenter.phoneChanged(text),
          errorMessage: state.phone.error?.description,
          keyboardType: TextInputType.phone,
          cursorColor: context.colors.backgroundPrimary,
          filled: true,
          fillColor: Colors.white,
        ),
      );
}
