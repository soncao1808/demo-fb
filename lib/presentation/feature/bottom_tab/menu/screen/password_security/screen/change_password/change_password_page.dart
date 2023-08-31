import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/bloc/change_password_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/component/button_change_password.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/component/text_input_new_password.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/component/text_input_old_password.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/component/text_input_repeat_password.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangePasswordPage extends BasePage {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends BasePageState<ChangePasswordPage> {
  final ChangePasswordAccountPresenter _changePasswordPresenter =
      injector.get<ChangePasswordAccountPresenter>();
  @override
  void initState() {
    _changePasswordPresenter.resetForm();
    super.initState();
  }

  @override
  void dispose() {
    _changePasswordPresenter.clearState();
    super.dispose();
  }

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundSecondary,
      isBack: true,
      isAction: false,
      label: AppLocalizations.of(context)!.text_change_password_tile,
      isBorderBottom: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ChangePasswordAccountPresenter, ChangePasswordAccountState>(
          bloc: _changePasswordPresenter,
          listenWhen: (ChangePasswordAccountState previous,
                  ChangePasswordAccountState current) =>
              (previous != current),
          listener: (BuildContext context, ChangePasswordAccountState state) {},
          builder: (BuildContext context, ChangePasswordAccountState state) =>
              Scaffold(
                  body: BaseContainer(
                body: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Stack(
                    children: <Widget>[
                      Scaffold(
                        backgroundColor: context.colors.background,
                        body: SingleChildScrollView(
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            margin: const EdgeInsets.only(top: 16.0),
                            color: context.colors.backgroundSecondary,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                TextInputOldPasswordAccount(),
                                SizedBox(height: 16.0),
                                TextInputNewPasswordAccount(),
                                SizedBox(height: 16.0),
                                TextInputRepeatPasswordAccount(),
                                SizedBox(height: 24.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: context.colors.backgroundSecondary,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5.0)),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.4),
                                spreadRadius: 1,
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.only(
                            bottom: 32.0,
                            right: 16.0,
                            left: 16.0,
                            top: 16.0,
                          ),
                          width: double.infinity,
                          child: const ButtonChangePassword(),
                        ),
                      )
                    ],
                  ),
                ),
              )));
}
