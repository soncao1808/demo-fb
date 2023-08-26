/* L-02 Quên mật khẩu */

import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/components/button_forgot_password.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/components/phone_input_forgot_password.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/forgot_password_presenter.dart';
import 'bloc/forgot_password_state.dart';

class ForgotPasswordPage extends BasePage {
  final bool isFogotPassword;
  const ForgotPasswordPage({
    super.key,
    this.isFogotPassword = false,
  });

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends BasePageState<ForgotPasswordPage> {
  final ForgotPasswordPresenter _forgotPasswordPresenter =
      injector.get<ForgotPasswordPresenter>();

  @override
  void dispose() {
    _forgotPasswordPresenter.clearState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_forgot_password_title,
      labelStyle: TextStyle(color: context.colors.labelSecondary),
      brightness: Brightness.dark,
      customIcBack: Image.asset(AppIcons.icChevronLeftWhite),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ForgotPasswordPresenter, ForgotPasswordState>(
        bloc: _forgotPasswordPresenter,
        listener: (BuildContext context, ForgotPasswordState state) {},
        builder: (BuildContext context, ForgotPasswordState state) {
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
                      children: <Widget>[
                        Text(
                          AppLocalizations.of(context)!
                              .text_forgot_password_description,
                          style: AppTextStyles.labelRegular14.copyWith(
                            color: context.colors.textPrimary,
                          ),
                        ),
                        const PhoneInputForgotPassword(),
                        const SizedBox(height: 24.0),
                        ButtonForgotPassword(
                          isFogotPassword: widget.isFogotPassword,
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
