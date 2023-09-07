import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BuildBottomButton extends StatelessWidget {
  const BuildBottomButton({super.key, required this.onConfirm});

  final Function onConfirm;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0, bottom: 36.0),
      decoration: BoxDecoration(
        color: context.colors.backgroundWhite,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: context.colors.textPrimary,
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: PrimaryButton(
              title: AppLocalizations.of(context)!.text_common_cancel,
              textColor: context.colors.textPrimary,
              borderColor: context.colors.unselectedBackground,
              backgroundColor: context.colors.unselectedBackground,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: PrimaryButton(
              title: AppLocalizations.of(context)!.text_common_save,
              textColor: context.colors.labelSecondary,
              backgroundColor: context.colors.selectedBackground,
              onPressed: () {
                onConfirm.call();
              },
            ),
          ),
        ],
      ),
    );
  }
}
