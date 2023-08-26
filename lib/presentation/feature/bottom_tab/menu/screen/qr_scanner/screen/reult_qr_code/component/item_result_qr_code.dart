import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:ui' as ui;
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../../../../../core/resources/app_images.dart';
import '../../../../../../../../../core/resources/app_text_styles.dart';
import '../../../../../../../../../injection/injector.dart';
import '../../../../../../../../base/base_page.dart';
import '../../../bloc/qr_scanner_state.dart';

class ItemResultQRCode extends BasePage {
  const ItemResultQRCode({super.key});

  @override
  State<ItemResultQRCode> createState() => _ItemResultQRCodeState();
}

class _ItemResultQRCodeState extends State<ItemResultQRCode> {
  final ScannerQRCodePresenter _scannerPresenter =
      injector.get<ScannerQRCodePresenter>();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<ScannerQRCodePresenter, ScannerQRCodeState>(
        bloc: _scannerPresenter,
        listener: (BuildContext context, ScannerQRCodeState state) {},
        builder: (BuildContext context, ScannerQRCodeState state) {
          final FutureBuilder<ui.Image> qrFutureBuilder =
              FutureBuilder<ui.Image>(
            future: _scannerPresenter.loadOverlayImage(),
            builder: (BuildContext ctx, AsyncSnapshot<ui.Image> snapshot) {
              const double size = 280.0;
              if (!snapshot.hasData) {
                return const SizedBox(width: size, height: size);
              }
              return CustomPaint(
                size: const Size.square(size),
                painter: QrPainter(
                  data: state.qrcode!.code ??
                      'https://androidride.com/scan-qr-code-flutter-generate/#google_vignette',
                  version: QrVersions.auto,
                  eyeStyle: QrEyeStyle(
                      eyeShape: QrEyeShape.square, color: context.colors.black),
                  dataModuleStyle: QrDataModuleStyle(
                      dataModuleShape: QrDataModuleShape.circle,
                      color: context.colors.black),
                  embeddedImage: snapshot.data,
                  embeddedImageStyle: const QrEmbeddedImageStyle(
                    size: Size.square(60),
                  ),
                ),
              );
            },
          );
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: context.colors.backgroundSecondary,
                ),
                color: context.colors.backgroundSecondary,
                borderRadius: const BorderRadius.all(Radius.circular(5.0))),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hanah Food',
                    style: AppTextStyles.labelBold20.copyWith(
                      color: context.colors.label,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    height: 256.0,
                    width: 256.0,
                    padding: const EdgeInsets.symmetric(
                        vertical: 16, horizontal: 16),
                    child: qrFutureBuilder,
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Text(
                    'Chia sẽ mã QR  của bạn',
                    style: AppTextStyles.labelRegular16.copyWith(
                      color: context.colors.label,
                    ),
                  ),
                  Text(
                    'để người khác có thể folow bạn',
                    style: AppTextStyles.labelRegular16.copyWith(
                      color: context.colors.label,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Image.asset(
                    width: 24.0,
                    height: 24.0,
                    AppImages.imageSplash,
                  )
                ]),
          );
        },
      );
}
