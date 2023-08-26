import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';

import '../../../../../../../injection/injector.dart';

class ScannerQRCodeModule {
  static Future<void> inject() async {
    injector.registerLazySingleton<ScannerQRCodePresenter>(
      () => ScannerQRCodePresenter(),
    );
  }
}
