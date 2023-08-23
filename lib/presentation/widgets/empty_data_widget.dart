import 'package:flutter/material.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fbapp/core/resources/app_icons.dart';

import '../../core/resources/app_text_styles.dart';

class EmptyDataWidget extends StatelessWidget {
  final double padding;
  const EmptyDataWidget({
    Key? key,
    this.padding = 50,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: padding),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Image.asset(
                AppIcons.icEmpty,
                width: 185.w,
                height: 211.h,
              ),
              const SizedBox(height: 4.0),
              Text(
                AppLocalizations.of(context)!.text_common_text_empty,
                style: AppTextStyles.labelRegular14,
              ),
            ],
          ),
        ),
      );
}
