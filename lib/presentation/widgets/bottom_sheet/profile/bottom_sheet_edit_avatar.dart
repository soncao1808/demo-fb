import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/image_view/image_view_page.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/image_picker/bottom_sheet_image_picker.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetEditAvatar extends BasePage {
  const BottomSheetEditAvatar({
    super.key,
  });

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
            navigationEventsHelper(const ImageViewPage(image: '',));
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          icon: AppIcons.icCopyToClipboard,
          title: AppLocalizations.of(context)!.text_update_new_image,
          onTap: () {
            Navigator.pop(context);
            BottomSheetHelper.showBottomSheet(
              body: const BottomSheetImagePicker(),
            );
          },
        ),
      ],
    );
  }
}
