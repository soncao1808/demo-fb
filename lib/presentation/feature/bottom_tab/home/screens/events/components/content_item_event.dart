import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/event/event.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContentItemEvents extends StatelessWidget {
  const ContentItemEvents(
      {super.key,
      required this.item,
      this.padding = EdgeInsets.zero,
      this.centerHorizontal = false});

  final Event item;
  final EdgeInsetsGeometry padding;
  final bool centerHorizontal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        crossAxisAlignment: centerHorizontal ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Text(
            item.time ?? '',
            style: AppTextStyles.labelBold12.copyWith(
              color: context.colors.textSecondary,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            item.name ?? '',
            style: AppTextStyles.labelBold16.copyWith(
              color: context.colors.label,
            ),
            textAlign: centerHorizontal ? TextAlign.center : null,
          ),
          const SizedBox(height: 4.0),
          Text(
            item.location ?? '',
            style: AppTextStyles.labelRegular12.copyWith(
              color: context.colors.label,
            ),
          ),
          const SizedBox(height: 4.0),
          Row(
            children: [
              if (centerHorizontal) const Expanded(child: SizedBox()),
              Text(
                '${item.careCount ?? 0} ${AppLocalizations.of(context)?.text_e_common_care_count}',
                style: AppTextStyles.labelRegular12.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
              const SizedBox(width: 8.0),
              SvgPicture.asset(AppIcons.icDot),
              const SizedBox(width: 8.0),
              Text(
                '${item.joinCount ?? 0} ${AppLocalizations.of(context)?.text_e_common_join_count}',
                style: AppTextStyles.labelRegular12.copyWith(
                  color: context.colors.textPrimary,
                ),
              ),
              if (centerHorizontal) const Expanded(child: SizedBox()),
            ],
          ),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
