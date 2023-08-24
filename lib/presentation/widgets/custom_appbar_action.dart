import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/presentation/widgets/svg_icon.dart';
import 'package:flutter/material.dart';

import '../../core/resources/app_icons.dart';
import '../../core/resources/app_text_styles.dart';

class CustomAppBarAction extends StatefulWidget {
  const CustomAppBarAction(
      {super.key,
      this.onTap,
      this.iconPath,
      this.haveBadge = false,
      this.badgeContent,
      this.padding});

  final Function? onTap;
  final String? iconPath;
  final bool haveBadge;
  final String? badgeContent;
  final EdgeInsetsGeometry? padding;

  @override
  State<CustomAppBarAction> createState() => _CustomAppBarActionState();
}

class _CustomAppBarActionState extends State<CustomAppBarAction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding,
      child: GestureDetector(
        onTap: () => widget.onTap,
        child: Stack(
          children: <Widget>[
            Container(
              width: 36.0,
              height: 36.0,
              padding: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: context.colors.backgroundSecondary,
              ),
              child: SvgIcon.from(widget.iconPath ?? AppIcons.icSearch),
            ),
            widget.haveBadge
                ? Positioned(
                    right: 1.0,
                    top: 1.0,
                    child: Container(
                      width: 14.0,
                      height: 14.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200),
                        color: context.colors.textSecondary,
                      ),
                      child: Text(
                        widget.badgeContent ?? '',
                        style: AppTextStyles.labelRegular10.copyWith(
                          color: context.colors.labelSecondary,
                        ),
                      ),
                    ))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
