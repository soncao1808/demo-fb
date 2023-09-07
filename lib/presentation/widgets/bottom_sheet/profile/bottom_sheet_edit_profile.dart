import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/screen/edit_personal_information/edit_personal_information.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetEditProfile extends BasePage {
  const BottomSheetEditProfile({
    super.key,
  });

  @override
  State<BottomSheetEditProfile> createState() => _BottomSheetEditProfileState();
}

class _BottomSheetEditProfileState extends State<BottomSheetEditProfile> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetBaseContainer(
      children: [
        OptionItem(
          icon: AppIcons.icEdit,
          title: AppLocalizations.of(context)!.text_edit_profile,
          onTap: () {
            Navigator.pop(context);
            navigationEventsHelper(const EditPersonalInformationPage());
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
