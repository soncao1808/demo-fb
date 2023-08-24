import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter_svg/svg.dart';

class CustomButtonEvent extends StatelessWidget {
  const CustomButtonEvent(
      {super.key,
      this.onTap,
      this.isSelected = false,
      this.selectedIcon,
      this.unSelectedIcon,
      this.selectedIconColor,
      this.unSelectedIconColor,
      this.title});

  final bool isSelected;
  final Function? onTap;
  final String? selectedIcon;
  final String? unSelectedIcon;
  final Color? selectedIconColor;
  final Color? unSelectedIconColor;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          color:
              isSelected ? context.colors.selectedBackground : context.colors.unselectedBackground,
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isSelected)
              (selectedIcon != null)
                  ? SvgPicture.asset(
                      selectedIcon ?? AppIcons.icStarOutline,
                      width: 20.0,
                      height: 20.0,
                      color: selectedIconColor ?? context.colors.labelSecondary,
                    )
                  : const SizedBox()
            else
              (unSelectedIcon != null)
                  ? SvgPicture.asset(
                      unSelectedIcon ?? AppIcons.icStarOutline,
                      width: 20.0,
                      height: 20.0,
                      color: unSelectedIconColor ?? context.colors.textPrimary,
                    )
                  : const SizedBox(),
            if (selectedIcon != null && unSelectedIcon != null && title != null)
              const SizedBox(width: 8.0),
            Text(
              title ?? '',
              style: AppTextStyles.labelBold14.copyWith(
                color: isSelected ? context.colors.labelSecondary : context.colors.textPrimary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
