import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/screen/reult_qr_code/reult_qr_code_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderScannerQRCode extends BasePage {
  const HeaderScannerQRCode({super.key});

  @override
  State<HeaderScannerQRCode> createState() => _HeaderScannerQRCodeState();
}

class _HeaderScannerQRCodeState extends State<HeaderScannerQRCode> {
  final ScannerQRCodePresenter _scannerPresenter =
      injector.get<ScannerQRCodePresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ScannerQRCodePresenter, ScannerQRCodeState>(
        bloc: _scannerPresenter,
        listener: (BuildContext context, ScannerQRCodeState state) {},
        builder: (BuildContext context, ScannerQRCodeState state) {
          final MediaQueryData mediaQuery = MediaQuery.of(context);
          return Container(
              padding: EdgeInsets.only(
                top: mediaQuery.padding.top,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: const EdgeInsets.all(4.0),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                        decoration: BoxDecoration(
                          color: context.colors.gunmetal,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100.0)),
                        ),
                        child: Image.asset(
                          width: 24.0,
                          height: 24.0,
                          AppIcons.icChevronLeft,
                          color: context.colors.labelSecondary,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ResultQRCodePage()));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4.0),
                      decoration: BoxDecoration(
                        color: context.colors.gunmetal,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(100.0)),
                      ),
                      child: Row(children: [
                        SvgPicture.asset(
                          width: 20.0,
                          height: 20.0,
                          AppIcons.icQrCode,
                          color: context.colors.labelSecondary,
                        ),
                        const SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          AppLocalizations.of(context)!.text_menu_my_qr_code,
                          style: AppTextStyles.labelBold14.copyWith(
                            color: context.colors.labelSecondary,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(
                    width: 64.0,
                  ),
                ],
              ));
        },
      );
}
