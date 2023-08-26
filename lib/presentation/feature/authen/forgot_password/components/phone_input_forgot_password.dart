// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/bloc/forgot_password_presenter.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/bloc/forgot_password_state.dart';
import 'package:fbapp/presentation/widgets/text_input_custom.dart';
import 'package:fbapp/domain/entities/user/login/form_field/phone.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PhoneInputForgotPassword extends BasePage {
  const PhoneInputForgotPassword({Key? key}) : super(key: key);

  @override
  _PhoneInputForgotPasswordState createState() =>
      _PhoneInputForgotPasswordState();
}

class _PhoneInputForgotPasswordState extends State<PhoneInputForgotPassword> {
  final ForgotPasswordPresenter _forgotPasswordPresenter =
      injector.get<ForgotPasswordPresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ForgotPasswordPresenter, ForgotPasswordState>(
        bloc: _forgotPasswordPresenter,
        listenWhen:
            (ForgotPasswordState previous, ForgotPasswordState current) =>
                (previous.status != current.status || previous != current),
        listener: (BuildContext context, ForgotPasswordState state) {},
        builder: (BuildContext context, ForgotPasswordState state) =>
            TextInputCustom(
          hintText: AppLocalizations.of(context)!.text_login_enter_phone,
          labelText: '',
          isRequired: false,
          onChanged: (String text) =>
              _forgotPasswordPresenter.phoneChanged(text),
          errorMessage: state.phone.error?.description,
          keyboardType: TextInputType.phone,
          cursorColor: context.colors.backgroundPrimary,
          filled: true,
          fillColor: Colors.white,
        ),
      );
}
