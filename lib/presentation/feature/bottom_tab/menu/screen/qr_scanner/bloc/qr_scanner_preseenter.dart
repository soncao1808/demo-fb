import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/screen/reult_qr_code/reult_qr_code_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerQRCodePresenter extends Cubit<ScannerQRCodeState> {
  ScannerQRCodePresenter({
    @visibleForTesting ScannerQRCodeState? state,
  }) : super(state ?? ScannerQRCodeState.initial());
  void init() {}
  void cleanState() {}

  void shareLink() async {}

  void onQRViewCreated(QRViewController controller) {
    emit(state.copyWith(controller: controller));
    controller.scannedDataStream.listen((scanData) {
      emit(state.copyWith(qrcode: scanData));
      controller.pauseCamera();
      if (state.qrcode != null) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ResultQRCodePage()),
        );
      }
    });
  }

  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  void reassemble() {
    if (Platform.isAndroid) {
      state.controller!.pauseCamera();
    } else if (Platform.isIOS) {
      state.controller!.resumeCamera();
    }
  }

  void dispose() {
    state.controller!.dispose();
  }

  Future<ui.Image> loadOverlayImage() async {
    final Completer<ui.Image> completer = Completer<ui.Image>();
    final ByteData byteData =
        await rootBundle.load('assets/images/logo_splash.png');
    ui.decodeImageFromList(byteData.buffer.asUint8List(), completer.complete);
    return completer.future;
  }
}
