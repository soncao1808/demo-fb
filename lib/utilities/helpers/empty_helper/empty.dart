import 'package:flutter/material.dart';
import '../../../core/resources/app_colors.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorsLight.background,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.hourglass_empty_outlined,
                color: context.colors.backgroundPrimary,
                size: 30,
              ),
              const SizedBox(height: 4),
              Text(AppLocalizations.of(context)!.text_common_data_not_found,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: colorsLight.textSecondary,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
