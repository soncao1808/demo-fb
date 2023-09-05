import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetImagePicker extends BasePage {
  const BottomSheetImagePicker({
    super.key,
  });

  @override
  State<BottomSheetImagePicker> createState() => _BottomSheetEditAvatarState();
}

class _BottomSheetEditAvatarState extends State<BottomSheetImagePicker> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetBaseContainer(
      children: [
        OptionItem(
          title: AppLocalizations.of(context)!.text_take_picture,
          onTap: () {
            openCamera();
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          title: AppLocalizations.of(context)!.text_select_image_from_device,
          onTap: () {
            choseFile();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  Future<void> openCamera() async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? pickedImage = await picker.pickImage(source: ImageSource.camera);
      //do something with File
    } catch (e) {
      //
    }
  }

  Future<void> choseFile() async {
    final ImagePicker picker = ImagePicker();
    try {
      final XFile? pickedImage = await picker.pickImage(source: ImageSource.gallery);
      //do something with File
    } catch (e) {
      //
    }
  }
}
