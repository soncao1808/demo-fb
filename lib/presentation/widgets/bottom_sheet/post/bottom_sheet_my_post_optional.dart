import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/create_post/create_post.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetMyPostOptional extends BasePage {
  const BottomSheetMyPostOptional({
    super.key,
    this.post,
  });

  final Post? post;

  @override
  State<BottomSheetMyPostOptional> createState() => _BottomSheetMyPostOptionalState();
}

class _BottomSheetMyPostOptionalState extends State<BottomSheetMyPostOptional> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetBaseContainer(
      children: [
        OptionItem(
          icon: AppIcons.icEdit,
          title: AppLocalizations.of(context)!.text_post_edit,
          onTap: () {
            Navigator.pop(context);
            navigationEventsHelper(CreatePostPage(post: widget.post));
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          icon: AppIcons.icDelete,
          title: AppLocalizations.of(context)!.text_post_edit,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          icon: AppIcons.icCopyToClipboard,
          title: AppLocalizations.of(context)!.text_post_copy,
          onTap: () {
            Clipboard.setData(const ClipboardData(text: 'copy'));
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
