import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class BuildShareContent extends StatefulWidget {
  const BuildShareContent({
    super.key,
  });

  @override
  State<BuildShareContent> createState() => _BuildShareContentState();
}

class _BuildShareContentState extends State<BuildShareContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: context.colors.backgroundWhite,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Avatar(
                url:
                    'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
                width: 40.0,
                height: 40.0,
                circular: 200.0,
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hanah Food',
                      style: AppTextStyles.labelBold14.copyWith(color: context.colors.label),
                    ),
                    const SizedBox(height: 4.0),
                    buildShareMode()
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 8.0),
          TextField(
            maxLines: 3,
            expands: false,
            keyboardType: TextInputType.multiline,
            style: AppTextStyles.labelRegular14.copyWith(color: context.colors.label),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: AppLocalizations.of(context)!.text_say_something,
              hintStyle: AppTextStyles.labelRegular14.copyWith(color: context.colors.mistyQuartz),
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              const Expanded(child: SizedBox()),
              PrimaryButton(
                title: AppLocalizations.of(context)!.text_share_now,
                height: 36.0,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildShareMode() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          decoration: BoxDecoration(
            color: context.colors.background,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: [
              SvgPicture.asset(
                AppIcons.icGlobal,
                width: 12.0,
                height: 12.0,
              ),
              const SizedBox(width: 4.0),
              Text(
                AppLocalizations.of(context)!.text_public,
                style: AppTextStyles.labelRegular12.copyWith(
                  color: context.colors.label,
                ),
              ),
              const SizedBox(width: 4.0),
              SvgPicture.asset(
                AppIcons.icChevronDownSvg,
                width: 12.0,
                height: 12.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
