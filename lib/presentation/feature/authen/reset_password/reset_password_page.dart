// ignore_for_file: library_private_types_in_public_api

/* L-01 Log in */

import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/base/progress_hud_mixin.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';

import 'bloc/reset_password_presenter.dart';
import 'bloc/reset_password_state.dart';
import 'components/button_reset_password.dart';
import 'components/text_input_new_password_reset_password.dart';
import 'components/text_input_repeat_password_reset_password.dart';

class ResetPasswordPage extends BasePage {
  final int? userId;
  final String? code;
  const ResetPasswordPage({
    Key? key,
    this.userId,
    this.code,
  }) : super(key: key);

  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends BasePageState<ResetPasswordPage>
    with ProgressHudMixin<ResetPasswordPage> {
  final ResetPasswordPresenter _resetPasswordPresenter =
      injector.get<ResetPasswordPresenter>();

  @override
  void dispose() {
    _resetPasswordPresenter.clearState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_forgot_password_reset_password,
      labelStyle: TextStyle(color: context.colors.labelSecondary),
      brightness: Brightness.dark,
      customIcBack: Image.asset(AppIcons.icChevronLeftWhite),
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ResetPasswordPresenter, ResetPasswordState>(
        bloc: _resetPasswordPresenter,
        listenWhen: (ResetPasswordState previous, ResetPasswordState current) =>
            (previous != current),
        listener: (BuildContext context, ResetPasswordState state) {},
        builder: (BuildContext context, ResetPasswordState state) {
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const TextInputNewPasswordResetPassword(),
                        const SizedBox(height: 16.0),
                        const TextInputRepeatPasswordResetPassword(),
                        const SizedBox(height: 24.0),
                        ButtonResetPassword(
                          userId: widget.userId,
                          code: widget.code,
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
