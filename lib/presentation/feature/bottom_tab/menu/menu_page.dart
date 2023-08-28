import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_popup.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'bloc/menu_presenter.dart';
import 'bloc/menu_state.dart';
import 'components/popup_logout.dart';

class MenuPage extends BasePage {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends BasePageState<MenuPage> {
  final MenuPresenter _menuPresenter = injector.get<MenuPresenter>();

  @override
  void initState() {
    _menuPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _menuPresenter.cleanState();
    super.dispose();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<MenuPresenter, MenuState>(
        bloc: _menuPresenter,
        listener: (BuildContext context, MenuState state) {},
        builder: (BuildContext context, MenuState state) => BaseContainer(
          body: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    color: context.colors.background,
                    child: Column(
                      children: <Widget>[
                        const SizedBox(height: 16.0),
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

class ListMemnuMenu extends StatelessWidget {
  const ListMemnuMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 16.0),
      ],
    );
  }
}
