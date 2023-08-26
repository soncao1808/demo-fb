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
import 'package:fbapp/domain/entities/user/sign_up/form_field/user_name.dart';

class TextInputUserNameSignUp extends BasePage {
  const TextInputUserNameSignUp({Key? key}) : super(key: key);

  @override
  _TextInputUserNameSignUpState createState() =>
      _TextInputUserNameSignUpState();
}

class _TextInputUserNameSignUpState extends State<TextInputUserNameSignUp> {
  final SignUpPresenter _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<SignUpPresenter, SignUpState>(
        bloc: _signUpPresenter,
        listenWhen: (SignUpState previous, SignUpState current) =>
            (previous.userName != current.userName),
        listener: (BuildContext context, SignUpState state) {},
        builder: (BuildContext context, SignUpState state) => TextInputCustom(
          hintText: AppLocalizations.of(context)!.text_sign_up_enter_full_name,
          labelText: AppLocalizations.of(context)!.text_sign_up_full_name,
          onChanged: (String text) => _signUpPresenter.useNameChanged(text),
          errorMessage: state.userName.error?.description,
          cursorColor: context.colors.backgroundPrimary,
          filled: true,
          fillColor: Colors.white,
        ),
      );
}
