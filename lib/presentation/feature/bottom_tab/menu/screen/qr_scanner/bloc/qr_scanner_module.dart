import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';

class ScannerQRCodeModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ScannerQRCodePresenter>(
      () => ScannerQRCodePresenter(),
    );
  }
}
