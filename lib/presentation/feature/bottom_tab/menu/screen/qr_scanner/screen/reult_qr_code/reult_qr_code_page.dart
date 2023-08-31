import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/screen/reult_qr_code/component/item_result_qr_code.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/screen/reult_qr_code/component/share_button.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:fbapp/presentation/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResultQRCodePage extends BasePage {
  const ResultQRCodePage({super.key});

  @override
  State<ResultQRCodePage> createState() => _ResultQRCodePageState();
}

class _ResultQRCodePageState extends BasePageState<ResultQRCodePage> {
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
      label: AppLocalizations.of(context)!.text_menu_my_qr_code,
      isCenterTitle: true,
    );
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ScannerQRCodePresenter, ScannerQRCodeState>(
          bloc: _menuPresenter,
          listener: (BuildContext context, ScannerQRCodeState state) {},
          builder: (BuildContext context, ScannerQRCodeState state) =>
              BaseContainer(
                  hasBackgroundImage: true,
                  backgroundColor: context.colors.background,
                  body: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 16.0),
                    width: double.infinity,
                    height: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          ItemResultQRCode(),
                          SizedBox(
                            height: 24,
                          ),
                          ButtonShare()
                        ]),
                  )));
}
