import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetFriendOptional extends BasePage {
  const BottomSheetFriendOptional({
    super.key,
  });

  @override
  State<BottomSheetFriendOptional> createState() => _BottomSheetFriendOptionalState();
}

class _BottomSheetFriendOptionalState extends State<BottomSheetFriendOptional> {

  @override
  Widget build(BuildContext context) {
    return BottomSheetBaseContainer(
      children: [
        OptionItem(
          icon: AppIcons.icXCircleOutline,
          title: AppLocalizations.of(context)!.text_block,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          icon: AppIcons.icCopyLink,
          title: AppLocalizations.of(context)!.text_copy_to_clipboard,
          onTap: () {
            Clipboard.setData(const ClipboardData(text: 'copy'));
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
