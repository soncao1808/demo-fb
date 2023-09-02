// ignore_for_file: always_specify_types

import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomCount extends StatelessWidget {
  const BottomCount({
    super.key,
    required this.item,
  });

  final Post? item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                AppIcons.icLikeCount,
                width: 24.0,
                height: 24.0,
              ),
              const SizedBox(width: 4.0),
              Text(
                (item?.likeCount ?? 0).toString(),
                style: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.label,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${item?.commentCount ?? 0} ${AppLocalizations.of(context)!.text_post_comment.toLowerCase()}",
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
                const SizedBox(width: 12.0),
                Text(
                  "${item?.shareCount ?? 0} ${AppLocalizations.of(context)!.text_post_share_count.toLowerCase()}",
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
