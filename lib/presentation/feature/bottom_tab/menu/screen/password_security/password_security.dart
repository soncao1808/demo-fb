import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/change_password/change_password_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/password_security/screen/detlete_account/delete_account.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../base/base_page.dart';
import '../../../../../widgets/base_container.dart';
import '../../../../../widgets/custom_appbar.dart';

class PasswordSecurityPage extends BasePage {
  const PasswordSecurityPage({super.key});

  @override
  State<PasswordSecurityPage> createState() => _PasswordSecurityPageState();
}

class _PasswordSecurityPageState extends BasePageState<PasswordSecurityPage> {
  final ScannerQRCodePresenter _menuPresenter =
      injector.get<ScannerQRCodePresenter>();
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
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return CustomAppBar(
      elevationShadow: 0,
      backgroundColorAppBar: context.colors.backgroundSecondary,
      isBack: true,
      isAction: false,
      label: AppLocalizations.of(context)!.text_m_01_menu_password_security,
      isBorderBottom: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ScannerQRCodePresenter, ScannerQRCodeState>(
          bloc: _menuPresenter,
          listener: (BuildContext context, ScannerQRCodeState state) {},
          builder: (BuildContext context, ScannerQRCodeState state) =>
              BaseContainer(
                  backgroundColor: context.colors.background,
                  body: Container(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          ListMemnuSelect(),
                        ]),
                  )));
}

class ListMemnuSelect extends StatelessWidget {
  const ListMemnuSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemMemnu(
          title: AppLocalizations.of(context)!
              .text_password_security_change_password,
          isBoder: true,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const ChangePasswordPage(),
              ),
            );
          },
        ),
        const SizedBox(height: 1),
        ItemMemnu(
          title: AppLocalizations.of(context)!
              .text_password_security_delete_password,
          isBoder: false,
          onPress: () {
            Navigator.push(
              context,
              MaterialPageRoute<dynamic>(
                builder: (BuildContext context) => const DeleteAccountPage(),
              ),
            );
          },
        ),
      ],
    );
  }
}

class ItemMemnu extends StatelessWidget {
  final String title;
  final Function onPress;
  final bool isBoder;
  const ItemMemnu({
    super.key,
    required this.title,
    required this.onPress,
    required this.isBoder,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        decoration: BoxDecoration(
            color: context.colors.backgroundSecondary,
            borderRadius: isBoder
                ? const BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))
                : const BorderRadius.only(
                    bottomLeft: Radius.circular(10.0),
                    bottomRight: Radius.circular(10.0))),
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Text(
                title,
                style: AppTextStyles.labelBold14.copyWith(
                  color: context.colors.label,
                ),
              ),
            ),
            Image.asset(
              width: 20.0,
              height: 20.0,
              AppIcons.icChevronRight,
              color: context.colors.lightcCharcoal,
            ),
          ],
        ),
      ),
    );
  }
}
