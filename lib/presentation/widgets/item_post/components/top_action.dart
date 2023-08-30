// ignore_for_file: always_specify_types

import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/components/bottom_sheet_post.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TopAction extends StatelessWidget {
  const TopAction({
    super.key,
    required this.item,
  });

  final Post item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            item.user?.avatar ?? "",
            width: 40.0,
            height: 40.0,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            flex: 1,
            child: Text(
              item.user?.name ?? "",
              style: AppTextStyles.labelBold14.copyWith(
                color: context.colors.label,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          GestureDetector(
            onTap: () {
              BottomSheetHelper.showBottomSheet(
                body: BottomSheetPost(),
              );
            },
            child: SvgPicture.asset(
              AppIcons.icDotHorizontal,
              width: 24.0,
              height: 24.0,
            ),
          )
        ],
      ),
    );
  }
}
