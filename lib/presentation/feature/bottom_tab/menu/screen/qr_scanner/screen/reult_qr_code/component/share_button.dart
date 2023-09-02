import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonShare extends BasePage {
  const ButtonShare({Key? key}) : super(key: key);

  @override
  State<ButtonShare> createState() => _ButtonShareState();
}

class _ButtonShareState extends State<ButtonShare> {
  final ScannerQRCodePresenter _scannerPresenter =
      injector.get<ScannerQRCodePresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ScannerQRCodePresenter, ScannerQRCodeState>(
          bloc: _scannerPresenter,
          listener: (BuildContext context, ScannerQRCodeState state) {},
          builder: (BuildContext context, ScannerQRCodeState state) =>
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: context.colors.backgroundSecondary,
                    ),
                    color: context.colors.backgroundSecondary,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          width: 20.0,
                          height: 20.0,
                          AppIcons.icLink,
                          color: context.colors.label,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          AppLocalizations.of(context)!.text_qr_code_share,
                          style: AppTextStyles.labelRegular14.copyWith(
                            color: context.colors.label,
                          ),
                          maxLines: 1,
                        )
                      ]),
                ),
              ));
}
