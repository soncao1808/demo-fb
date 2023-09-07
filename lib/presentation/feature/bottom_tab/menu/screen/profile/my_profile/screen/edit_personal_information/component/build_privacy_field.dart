import 'package:fbapp/data/enum/user_enum.dart';
import 'package:fbapp/presentation/widgets/custom_check_box_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BuildPrivacyField extends StatelessWidget {
  const BuildPrivacyField({
    super.key,
    required this.onChange,
    this.currentPrivacy = Privacy.PUBLIC,
    this.required = false,
  });

  final Function(Privacy) onChange;
  final Privacy? currentPrivacy;
  final bool? required;

  @override
  Widget build(BuildContext context) {
    return CustomCheckBoxList(
      labelText: AppLocalizations.of(context)!.text_privacy,
      required: required,
      child: [
        CustomCheckBoxItem(
            labelText: Privacy.PUBLIC.name,
            onTap: () {
              onChange(Privacy.PUBLIC);
            },
            checked: Privacy.PUBLIC,
            current: currentPrivacy),
        CustomCheckBoxItem(
            labelText: Privacy.PRIVATE.name,
            onTap: () {
              onChange(Privacy.PRIVATE);
            },
            checked: Privacy.PRIVATE,
            current: currentPrivacy),
      ],
    );
  }
}
