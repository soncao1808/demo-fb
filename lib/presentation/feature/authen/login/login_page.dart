import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_images.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/base/progress_hud_mixin.dart';
import 'package:fbapp/presentation/feature/authen/login/bloc/login_presenter.dart';
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
              body: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32.0,
                  ),
                  color: context.colors.backgroundSecondary,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: mediaQuery.size.height * 0.15),
                      Image.asset(
                        AppImages.imageSplash,
                        width: 84.0,
                        height: 84.0,
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        AppLocalizations.of(context)!.text_common_text_empty,
                        style: AppTextStyles.labelMedium20.copyWith(
                          color: context.colors.label,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      );
}
