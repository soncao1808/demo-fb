import 'package:fbapp/core/resources/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'qr_scanner_state.freezed.dart';

@freezed
class ScannerQRCodeState with _$ScannerQRCodeState {
  factory ScannerQRCodeState({
    required QRViewController? controller,
    required ProcessStatus status,
    required String? message,
    required Barcode? qrcode,
    required int? id,
  }) = _ScannerQRCodeState;

  const ScannerQRCodeState._();

  factory ScannerQRCodeState.initial() => ScannerQRCodeState(
        status: ProcessStatus.initialize,
        message: '',
        qrcode: null,
        id: null,
        controller: null,
      );
}
