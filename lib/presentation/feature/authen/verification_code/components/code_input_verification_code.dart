// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/verification_code/bloc/verification_code_presenter.dart';
import 'package:fbapp/presentation/feature/authen/verification_code/bloc/verification_code_state.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:pinput/pinput.dart';

class CodeVerificationCode extends BasePage {
  final int? userId;
  final bool isSignUp;
  final bool isFogotPassword;
  final String phoneNumber;
  final String password;
  const CodeVerificationCode({
    Key? key,
    this.userId,
    this.isSignUp = false,
    this.phoneNumber = '',
    this.password = '',
    this.isFogotPassword = false,
  }) : super(key: key);

  @override
  _CodeVerificationCodeState createState() => _CodeVerificationCodeState();
}

class _CodeVerificationCodeState extends State<CodeVerificationCode> {
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
        builder: (BuildContext context, VerificationCodeState state) {
          return Container(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  AppLocalizations.of(context)!
                      .text_verification_code_endter_code,
                  style: AppTextStyles.labelMedium14.copyWith(
                    color: context.colors.label,
                  ),
                ),
                const SizedBox(height: 12.0),
                Pinput(
                  length: 6,
                  defaultPinTheme: PinTheme(
                    width: 53,
                    height: 40,
                    textStyle: AppTextStyles.labelRegular14,
                    decoration: BoxDecoration(
                      border: Border.all(color: context.colors.borderInputCode),
                      borderRadius: BorderRadius.circular(5),
                      color: context.colors.backgroundInput,
                    ),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 53,
                    height: 40,
                    textStyle: AppTextStyles.labelRegular14,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: context.colors.backgroundPrimary,
                      ),
                      borderRadius: BorderRadius.circular(5),
                      color: context.colors.backgroundSecondary,
                    ),
                  ),
                  onCompleted: (String value) =>
                      _verificationCodePresenter.changeCode(
                    widget.userId,
                    value,
                    widget.isSignUp,
                    widget.phoneNumber,
                    widget.password,
                    widget.isFogotPassword,
                  ),
                ),
              ],
            ),
          );
        },
      );
}
