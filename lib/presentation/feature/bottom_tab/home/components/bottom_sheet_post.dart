import 'package:fbapp/presentation/widgets/bottom_sheet/component/bottom_sheet_base_container.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/component/option_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fbapp/core/resources/resources.dart';

class BottomSheetPostOptional extends StatelessWidget {
  const BottomSheetPostOptional({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomSheetBaseContainer(
      children: [
        OptionItem(
          icon: AppIcons.icReport,
          title: AppLocalizations.of(context)!.text_post_report,
          onTap: () {
            Navigator.pop(context);
          },
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          icon: AppIcons.icCopyToClipboard,
          title: AppLocalizations.of(context)!.text_post_copy,
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
