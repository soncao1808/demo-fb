import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/share/component/build_share_content.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/share/component/build_share_options.dart';
import 'package:flutter/cupertino.dart';

class BottomSheetShare extends BasePage {
  const BottomSheetShare({
    super.key,
  });

  @override
  State<BottomSheetShare> createState() => _BottomSheetShareState();
}

class _BottomSheetShareState extends State<BottomSheetShare> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const <Widget>[
        BuildShareContent(),
        SizedBox(height: 16.0),
        BuildShareOptions(),
        SizedBox(height: 16.0),
      ],
    );
  }
}
