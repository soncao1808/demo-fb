import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_popup.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/account_presenter.dart';
import 'bloc/account_state.dart';
import 'components/popup_logout.dart';

class AccountPage extends BasePage {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends BasePageState<AccountPage> {
  final AccountPresenter _accountPresenter = injector.get<AccountPresenter>();

  @override
  void initState() {
    _accountPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _accountPresenter.cleanState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<AccountPresenter, AccountState>(
        bloc: _accountPresenter,
        listener: (BuildContext context, AccountState state) {},
        builder: (BuildContext context, AccountState state) => BaseContainer(
          backgroundColorAppBar: context.colors.backgroundPrimary,
          body: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: context.colors.background,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 16.0),
                        const ListMemnuAccount(),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 33.0,
                            vertical: 32.0,
                          ),
                          child: PrimaryButton(
                            title: AppLocalizations.of(context)!
                                .text_common_logout,
                            isLoading: false,
                            backgroundColor: context.colors.backgroundSecondary,
                            textColor: context.colors.backgroundPrimary,
                            onPressed: () {
                              Navigator.push(
                                context,
                                CustomPopup(
                                  body: const PopupLogout(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

class ListMemnuAccount extends StatelessWidget {
  const ListMemnuAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 16.0),
      ],
    );
  }
}
