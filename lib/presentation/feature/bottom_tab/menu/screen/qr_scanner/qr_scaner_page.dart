import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_preseenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/bloc/qr_scanner_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/qr_scanner/component/header.dart';
import 'package:fbapp/presentation/widgets/base_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerQRCodePage extends BasePage {
  const ScannerQRCodePage({super.key});

  @override
  State<ScannerQRCodePage> createState() => _ScannerQRCodePageState();
}

class _ScannerQRCodePageState extends BasePageState<ScannerQRCodePage> {
  final ScannerQRCodePresenter _scannerPresenter =
      injector.get<ScannerQRCodePresenter>();
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void initState() {
    _scannerPresenter.init();
    super.initState();
  }

  @override
  void dispose() {
    _scannerPresenter.dispose();
    _scannerPresenter.cleanState();
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    _scannerPresenter.reassemble();
  }

  @override
  Widget buildBody(BuildContext context) =>
      BlocConsumer<ScannerQRCodePresenter, ScannerQRCodeState>(
          bloc: _scannerPresenter,
          listener: (BuildContext context, ScannerQRCodeState state) {},
          builder: (BuildContext context, ScannerQRCodeState state) =>
              BaseContainer(
                  backgroundColorAppBar: context.colors.background,
                  body: Stack(
                    children: [
                      _buildQrView(context),
                      Column(children: <Widget>[
                        const HeaderScannerQRCode(),
                        const SizedBox(
                          height: 92.0,
                        ),
                        Text('Hướng camera về phía mã QR',
                            style: AppTextStyles.labelRegular14.copyWith(
                              color: context.colors.labelSecondary,
                            ))
                      ])
                    ],
                  )));

  Widget _buildQrView(BuildContext context) {
    return QRView(
      key: qrKey,
      onQRViewCreated: _scannerPresenter.onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: context.colors.background,
          borderRadius: 10,
          borderLength: 38,
          borderWidth: 10,
          cutOutSize: 250,
          cutOutBottomOffset: -34),
      onPermissionSet: (ctrl, p) =>
          _scannerPresenter.onPermissionSet(context, ctrl, p),
    );
  }
}
