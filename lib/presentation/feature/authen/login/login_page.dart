import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/base/progress_hud_mixin.dart';
import 'package:fbapp/presentation/feature/authen/forgot_password/forgot_password.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_presenter.dart';
import 'package:fbapp/presentation/feature/authen/login/components/button_login.dart';
import 'package:fbapp/presentation/feature/authen/login/components/text_input_password.dart';
import 'package:fbapp/presentation/feature/authen/login/components/text_input_phone.dart';
import 'package:fbapp/presentation/feature/authen/sign_up/sign_up_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:fbapp/utilities/helpers/appbar_helper/appbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/login_state.dart';

class LoginPage extends BasePage {
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage>
    with ProgressHudMixin<LoginPage> {
  final LoginPresenter _loginPresenter = injector.get<LoginPresenter>();

  @override
  void initState() {
    _loginPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _loginPresenter.clearState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      backgroundColorAppBar: context.colors.backgroundPrimary,
      label: AppLocalizations.of(context)!.text_login_title,
      isBorderBottom: true,
      isBack: false,
      labelStyle: TextStyle(color: context.colors.labelSecondary),
      brightness: Brightness.dark,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<LoginPresenter, LoginState>(
        bloc: _loginPresenter,
        listenWhen: (LoginState previous, LoginState current) =>
            (previous != current),
        listener: (BuildContext context, LoginState state) {},
        builder: (BuildContext context, LoginState state) {
          final MediaQueryData mediaQuery = MediaQuery.of(context);

          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: Scaffold(
              backgroundColor: context.colors.backgroundSecondary,
              appBar: appBarCustom(context.colors.backgroundSecondary),
              body: BaseContainer(
                hasBackgroundImage: true,
                body: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: mediaQuery.size.height * 0.1),
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            AppImages.imageLogo,
                            width: 84.0,
                            height: 84.0,
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        const TextInputPhoneLogin(),
                        const SizedBox(height: 16.0),
                        const TextInputPasswordLogin(),
                        const SizedBox(height: 16.0),
                        Container(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              navigationEventsHelper(
                                const ForgotPasswordPage(isFogotPassword: true),
                              );
                            },
                            child: Text(
                              "${AppLocalizations.of(context)!.text_login_forgot_password}?",
                              style: AppTextStyles.labelRegular14.copyWith(
                                color: context.colors.label,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        const ButtonLogin(),
                        Container(
                          padding: EdgeInsets.only(
                            bottom: 60.0,
                            top: mediaQuery.size.height * 0.26 -
                                mediaQuery.padding.bottom,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "${AppLocalizations.of(context)!.text_login_do_not_have_an_account}? ",
                                style: AppTextStyles.labelRegular14.copyWith(
                                  color: context.colors.label,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    SignUpPage.route.material(),
                                  );
                                  _loginPresenter.resetFormPassword();
                                },
                                child: Text(
                                  AppLocalizations.of(context)!
                                      .text_sign_up_register,
                                  style: AppTextStyles.labelMedium14.copyWith(
                                    color: context.colors.backgroundPrimary,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
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
