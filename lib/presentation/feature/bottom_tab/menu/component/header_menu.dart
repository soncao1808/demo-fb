import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/bloc/menu_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../../injection/injector.dart';
import '../../../../base/base_page.dart';
import '../../../../../core/resources/app_text_styles.dart';

class HeaderMenu extends BasePage {
  const HeaderMenu({super.key});

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  final MenuPresenter _accountPresenter = injector.get<MenuPresenter>();

  @override
  Widget build(BuildContext context) => BlocConsumer<MenuPresenter, MenuState>(
        bloc: _accountPresenter,
        listener: (BuildContext context, MenuState state) {},
        builder: (BuildContext context, MenuState state) {
          final MediaQueryData mediaQuery = MediaQuery.of(context);
          return Container(
              padding: EdgeInsets.only(
                top: 20.0 + mediaQuery.padding.top,
                right: 16.0,
                left: 16.0,
                bottom: 12.0,
              ),
              color: context.colors.backgroundPrimary,
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  AppLocalizations.of(context)!.text_m_01_menu_title,
                  style: AppTextStyles.labelBold20.copyWith(
                    color: context.colors.labelSecondary,
                  ),
                ),
              ));
        },
      );
}
