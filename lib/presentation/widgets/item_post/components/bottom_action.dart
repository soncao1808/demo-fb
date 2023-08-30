// ignore_for_file: always_specify_types

import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class BottomAction extends StatelessWidget {
  const BottomAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset(
                  AppIcons.icLike,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                ),
                const SizedBox(width: 6.0),
                Text(
                  AppLocalizations.of(context)!.text_post_like,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  AppIcons.icComment,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                ),
                const SizedBox(width: 6.0),
                Text(
                  AppLocalizations.of(context)!.text_post_comment,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SvgPicture.asset(
                  AppIcons.icLink,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                ),
                const SizedBox(width: 6.0),
                Text(
                  AppLocalizations.of(context)!.text_post_share,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
