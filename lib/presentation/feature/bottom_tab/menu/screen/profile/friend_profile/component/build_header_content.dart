import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/bloc/friend_profile_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/component/build_header_button.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/followed/followed_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/follower/follower_page.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/screen/personal_information/friend_information.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:flutter_gen/gen_l10n/app_localizations.dart";

class BuildFriendProfileHeaderContent extends StatelessWidget {
  const BuildFriendProfileHeaderContent({
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
    return Container(
      color: context.colors.backgroundWhite,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: '${state.user?.getFullName() ?? ''} ',
              style: AppTextStyles.labelLarge24.copyWith(
                color: context.colors.label,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '(Biệt Danh)',
                  style: AppTextStyles.labelBold16.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8.0),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  navigationEventsHelper(const FollowerPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: '${state.user?.followerCount ?? 0} ',
                    style: AppTextStyles.labelBold16.copyWith(
                      color: context.colors.label,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context)!.text_follower.toLowerCase(),
                        style: AppTextStyles.labelRegular12.copyWith(
                          color: context.colors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: SvgPicture.asset(
                  AppIcons.icDot,
                  color: context.colors.label,
                ),
              ),
              GestureDetector(
                onTap: () {
                  navigationEventsHelper(const FollowedPage());
                },
                child: RichText(
                  text: TextSpan(
                    text: '${state.user?.followedCount ?? 0} ',
                    style: AppTextStyles.labelBold16.copyWith(
                      color: context.colors.label,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: AppLocalizations.of(context)!.text_following.toLowerCase(),
                        style: AppTextStyles.labelRegular12.copyWith(
                          color: context.colors.textPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            state.user?.story ?? '',
            style: AppTextStyles.labelRegular14.copyWith(
              color: context.colors.label,
            ),
          ),
          if (state.user != null)
            Column(
              children: [
                const SizedBox(height: 8.0),
                BuildFriendProfileHeaderButton(
                  state: state,
                  onFollowTap: onFollowTap,
                  onSendMessTap: onSendMessTap,
                ),
              ],
            ),
          GestureDetector(
            onTap: () {
              navigationEventsHelper(const FriendInformationPage());
            },
            child: Container(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.text_view_more_info,
                      style: AppTextStyles.labelRegular14.copyWith(
                        color: context.colors.label,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SvgPicture.asset(
                    AppIcons.icChevronRightSvg,
                    color: context.colors.label,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
