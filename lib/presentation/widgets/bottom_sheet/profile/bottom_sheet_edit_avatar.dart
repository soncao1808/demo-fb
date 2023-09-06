import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetEditAvatar extends BasePage {
  const BottomSheetEditAvatar({
    super.key,
    required this.onView,
    required this.onEdit,
  });

  final Function onEdit;
  final Function onView;

  @override
  State<BottomSheetEditAvatar> createState() => _BottomSheetEditAvatarState();
}

class _BottomSheetEditAvatarState extends State<BottomSheetEditAvatar> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetBaseContainer(
      children: [
        OptionItem(
          icon: AppIcons.icEdit,
          title: AppLocalizations.of(context)!.text_view_avatar,
          onTap: () {
            Navigator.pop(context);
            widget.onView.call();
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          icon: AppIcons.icCopyToClipboard,
          title: AppLocalizations.of(context)!.text_update_new_image,
          onTap: () {
            Navigator.pop(context);
            widget.onEdit.call();
          },
        ),
      ],
    );
  }
}
