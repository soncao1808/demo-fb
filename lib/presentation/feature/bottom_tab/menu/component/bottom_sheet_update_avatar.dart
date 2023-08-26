import 'package:fbapp/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/resources/app_text_styles.dart';

class BottomSheetUpdateAvatar extends StatelessWidget {
  const BottomSheetUpdateAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: context.colors.backgroundSecondary,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          child: Column(
            children: <Widget>[
              _ItemButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: AppLocalizations.of(context)!.text_m_01_menu_title,
              ),
              const Divider(),
              _ItemButton(
                onTap: () {
                  Navigator.pop(context);
                },
                title: AppLocalizations.of(context)!.text_m_01_menu_title,
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 4,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.white,
          ),
          child: _ItemButton(
            onTap: () {
              Navigator.of(context).pop();
            },
            title: AppLocalizations.of(context)!.text_common_cancel,
            color: context.colors.backgroundPrimary,
          ),
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}

class _ItemButton extends StatelessWidget {
  const _ItemButton({
    required this.title,
    required this.onTap,
    this.color,
  });

  final String title;
  final Function onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      width: double.infinity,
      child: GestureDetector(
        onTap: () => onTap(),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppTextStyles.labelRegular14.copyWith(
            color: color ?? context.colors.textPrimary,
          ),
        ),
      ),
    );
  }
}
