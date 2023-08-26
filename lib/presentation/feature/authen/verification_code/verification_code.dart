// ignore_for_file: always_specify_types

import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/base/progress_hud_mixin.dart';
import 'package:fbapp/presentation/feature/authen/verification_code/components/code_input_verification_code.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/verification_code_presenter.dart';
import 'bloc/verification_code_state.dart';

class VerificationCodePage extends BasePage {
  final String phoneNumber;
  final String? password;
  final int? userId;
  final bool isSignUp;
  final bool isFogotPassword;

  const VerificationCodePage({
    super.key,
    required this.phoneNumber,
    this.password,
    this.userId,
    this.isSignUp = false,
    this.isFogotPassword = false,
  });

  @override
  State<VerificationCodePage> createState() => _VerificationCodePageState();
}

class _VerificationCodePageState extends BasePageState<VerificationCodePage>
    with ProgressHudMixin {
  final VerificationCodePresenter _verificationCodePresenter =
      injector.get<VerificationCodePresenter>();

  @override
  void dispose() {
    _verificationCodePresenter.clearState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_verification_code_title,
      labelStyle: TextStyle(color: context.colors.labelSecondary),
      brightness: Brightness.dark,
      customIcBack: Image.asset(AppIcons.icChevronLeftWhite),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<VerificationCodePresenter, VerificationCodeState>(
        bloc: _verificationCodePresenter,
        listener: (BuildContext context, VerificationCodeState state) {},
        builder: (BuildContext context, VerificationCodeState state) {
          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Scaffold(
              backgroundColor: context.colors.backgroundSecondary,
              body: BaseContainer(
                hasBackgroundImage: true,
                body: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                      vertical: 24.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CodeVerificationCode(
                          userId: widget.userId,
                          isSignUp: widget.isSignUp,
                          phoneNumber: widget.phoneNumber,
                          password: widget.password ?? '',
                          isFogotPassword: widget.isFogotPassword,
                        ),
                        const SizedBox(height: 24.0),
                        Text(
                          AppLocalizations.of(context)!
                              .text_verification_code_sended,
                          style: AppTextStyles.labelRegular14.copyWith(
                            color: context.colors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Text(
                          widget.phoneNumber,
                          style: AppTextStyles.labelMedium14.copyWith(
                            color: context.colors.label,
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        InkWell(
                          onTap: () {
                            _verificationCodePresenter
                                .handleResendCode(widget.phoneNumber);
                          },
                          child: Text(
                            AppLocalizations.of(context)!.text_common_resend,
                            style: AppTextStyles.labelRegular14.copyWith(
                              color: context.colors.textCerulean,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      );
}
