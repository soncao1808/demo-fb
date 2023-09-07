import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_state.dart';
import 'package:fbapp/presentation/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BuildFriendProfileHeaderButton extends StatelessWidget {
  const BuildFriendProfileHeaderButton({
    super.key,
    required this.state,
    required this.onFollowTap,
    required this.onSendMessTap,
  });

  final FriendProfileState state;
  final Function onFollowTap;
  final Function onSendMessTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(
            title: (state.user?.isFollowed ?? false)
                ? AppLocalizations.of(context)!.text_following
                : AppLocalizations.of(context)!.text_follow,
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            removeHeight: true,
            textColor: context.colors.labelSecondary,
            borderColor: context.colors.selectedBackground,
            backgroundColor: context.colors.selectedBackground,
            onPressed: () {
              onFollowTap.call();
            },
          ),
        ),
        const SizedBox(width: 8.0),
        Expanded(
          child: PrimaryButton(
            title: AppLocalizations.of(context)!.text_send_message,
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            removeHeight: true,
            textColor: context.colors.textPrimary,
            borderColor: context.colors.unselectedBackground,
            backgroundColor: context.colors.unselectedBackground,
            onPressed: () {
              onSendMessTap.call();
            },
          ),
        ),
      ],
    );
  }
}
