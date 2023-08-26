// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/verification_code/bloc/verification_code_presenter.dart';
import 'package:fbapp/presentation/feature/authen/verification_code/bloc/verification_code_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ButtonVerificationCode extends BasePage {
  const ButtonVerificationCode({Key? key}) : super(key: key);

  @override
  _ButtonVerificationCodeState createState() => _ButtonVerificationCodeState();
}

class _ButtonVerificationCodeState extends State<ButtonVerificationCode> {
  final VerificationCodePresenter _verificationCodePresenter =
      injector.get<VerificationCodePresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<VerificationCodePresenter, VerificationCodeState>(
        bloc: _verificationCodePresenter,
        listenWhen:
            (VerificationCodeState previous, VerificationCodeState current) =>
                (previous.code != current.code),
        listener: (BuildContext context, VerificationCodeState state) {},
        builder: (BuildContext context, VerificationCodeState state) =>
            PrimaryButton(
          title: AppLocalizations.of(context)!.text_common_confirm,
          isLoading: false,
          isDisable: false,
        ),
      );
}
