import 'package:dartx/dartx.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OptionItem extends StatelessWidget {
  const OptionItem({
    super.key,
    this.iconHaveBackground = false,
    this.icon,
    this.title,
    this.onTap,
  });

  final bool iconHaveBackground;
  final String? icon;
  final String? title;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Row(
        children: <Widget>[
          Container(
            width: icon.isNotNullOrBlank ? 32.0 : 0.0,
            height: 32.0,
            decoration: iconHaveBackground
                ? BoxDecoration(
                    color: context.colors.unselectedBackground,
                    borderRadius: BorderRadius.circular(200))
                : null,
            padding: const EdgeInsets.all(4.0),
            child: (icon.isNotNullOrBlank)
                ? SvgPicture.asset(
                    icon!,
                    width: 24.0,
                    height: 24.0,
                  )
                : const SizedBox(),
          ),
          const SizedBox(width: 8.0),
          Expanded(
              child: Text(
            title ?? '',
            style: AppTextStyles.labelRegular14.copyWith(
              color: context.colors.label,
            ),
            overflow: TextOverflow.ellipsis,
          )),
        ],
      ),
    );
  }
}
