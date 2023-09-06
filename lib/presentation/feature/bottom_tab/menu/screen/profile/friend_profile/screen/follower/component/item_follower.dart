import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/user/info/user_model_ui.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";
import 'package:flutter/material.dart';

class ItemFollower extends StatelessWidget {
  const ItemFollower({
    super.key,
    required this.item,
    required this.onTap,
    required this.onFollowTap,
    this.isLast = false,
  });

  final FriendUiModel item;
  final Function onTap;
  final Function onFollowTap;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap.call();
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 16.0,
          top: 16.0,
          right: 16.0,
          bottom: isLast ? 16.0 : 0,
        ),
        color: context.colors.backgroundWhite,
        child: Row(
          children: [
            Avatar(
              url: item.avatar ?? '',
              width: 40.0,
              height: 40.0,
              circular: 200.0,
            ),
            const SizedBox(width: 7.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.getFullName(),
                    style: AppTextStyles.labelBold14.copyWith(
                      color: context.colors.label,
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Text(
                    '${item.followerCount ?? 0} ${AppLocalizations.of(context)!.text_follower.toLowerCase()}',
                    style: AppTextStyles.labelRegular12.copyWith(
                      color: context.colors.textPrimary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8.0),
            if (!item.isFollowed)
              PrimaryButton(
                title: AppLocalizations.of(context)!.text_follow,
                isLoading: false,
                removeHeight: true,
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                borderColor: context.colors.selectedBackground,
                backgroundColor: context.colors.selectedBackground,
                textColor: context.colors.labelSecondary,
                onPressed: () {
                  onFollowTap.call();
                },
              )
          ],
        ),
      ),
    );
  }
}
