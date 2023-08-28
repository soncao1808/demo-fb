import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class BuildShareOptions extends StatefulWidget {
  const BuildShareOptions({
    super.key,
  });

  @override
  State<BuildShareOptions> createState() => _BuildShareOptionsState();
}

class _BuildShareOptionsState extends State<BuildShareOptions> {

  void copyToClipboard(String url) {
    Clipboard.setData(ClipboardData(text: url));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: context.colors.backgroundWhite,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: OptionItem(
              icon: AppIcons.icCopyToClipboard,
              title: AppLocalizations.of(context)!.text_copy_to_clipboard,
              iconHaveBackground: true,
              onTap: () {
                copyToClipboard('Copy hihi');
              },
            ),
          ),
          const SizedBox(width: 15.0),
          Expanded(
            child: OptionItem(
              icon: AppIcons.icMoreHorizontal,
              title: AppLocalizations.of(context)!.text_view_more,
              iconHaveBackground: true,
            ),
          ),
        ],
      ),
    );
  }
}
