// ignore_for_file: library_private_types_in_public_api

import 'package:fbapp/core/resources/app_colors.dart';
/* S-01 Sign up */

import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/app_router.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/base/progress_hud_mixin.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/bloc/sign_up_presenter.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/components/text_input_password_sign_up.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/components/text_input_repeat_password_sign_up.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/components/text_input_user_name_sign_up.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/sign_up_state.dart';
import 'components/button_sign_up.dart';
import 'components/text_input_phone_sing_up.dart';

class SignUpPage extends BasePage {
  const SignUpPage({Key? key}) : super(key: key);

  static ScreenRoute get route => ScreenRoute(
        name: '/signUpPage',
        builder: (_) => const SignUpPage(),
      );

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends BasePageState<SignUpPage>
    with ProgressHudMixin<SignUpPage> {
  final SignUpPresenter _signUpPresenter = injector.get<SignUpPresenter>();

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_sign_up_title,
      labelStyle: TextStyle(color: context.colors.labelSecondary),
      brightness: Brightness.dark,
      customIcBack: Image.asset(AppIcons.icChevronLeftWhite),
    );
  }

  @override
  void dispose() {
    _signUpPresenter.clearState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<SignUpPresenter, SignUpState>(
        bloc: _signUpPresenter,
        listener: (BuildContext context, SignUpState state) {},
        builder: (BuildContext context, SignUpState state) {
          final MediaQueryData mediaQuery = MediaQuery.of(context);

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
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 40.0),
                        Image.asset(
                          AppImages.imageLogo,
                          width: 84.0,
                          height: 84.0,
                        ),
                        const SizedBox(height: 24.0),
                        const TextInputUserNameSignUp(),
                        const SizedBox(height: 16.0),
                        const TextInputPhoneSignUp(),
                        const SizedBox(height: 16.0),
                        const TextInputPasswordSignUp(),
                        const SizedBox(height: 24.0),
                        const TextInputRepeatPasswordSignUp(),
                        const SizedBox(height: 24.0),
                        RichText(
                          text: TextSpan(
                            text:
                                "${AppLocalizations.of(context)!.text_sign_up_agree_with} ",
                            style: TextStyle(color: context.colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text:
                                    "${AppLocalizations.of(context)!.text_sign_up_general_policy} ${AppLocalizations.of(context)!.text_common_and} ${AppLocalizations.of(context)!.text_sign_up_personal_privacy_notice}",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        const ButtonSignUp(),
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
