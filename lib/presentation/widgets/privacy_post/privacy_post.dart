// ignore_for_file: always_specify_types

import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PrivacyPost extends StatefulWidget {
  const PrivacyPost({
    super.key,
    required this.privacy,
    this.onTap,
  });

  final int privacy;
  final Function? onTap;

  @override
  State<PrivacyPost> createState() => _PrivacyPostState();
}

class _PrivacyPostState extends State<PrivacyPost> {
  String getText() {
    switch (widget.privacy) {
      case 1:
        return AppLocalizations.of(context)!.text_create_post_friend;
      case 2:
        return AppLocalizations.of(context)!.text_create_post_private;
      default:
        return AppLocalizations.of(context)!.text_create_post_public;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: context.colors.background,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              AppIcons.icPrivacyPublic,
              width: 15.0,
              height: 15.0,
              color: Colors.black87,
            ),
            const SizedBox(width: 6),
            Text(getText()),
            const SizedBox(width: 6),
            SvgPicture.asset(
              AppIcons.icChevronDownSvg,
              width: 15.0,
              height: 15.0,
              color: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
