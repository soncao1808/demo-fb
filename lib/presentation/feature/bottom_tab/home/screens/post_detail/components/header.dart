import 'package:cached_network_image/cached_network_image.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/components/bottom_sheet_post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/friend_profile/friend_profile.dart';
import 'package:fbapp/presentation/feature/bottom_tab/menu/screen/profile/my_profile/my_profile.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/post/bottom_sheet_my_post_optional.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderPostDetail extends StatelessWidget {
  final Function onTapAction;
  final UserPost? user;

  const HeaderPostDetail({
    required this.onTapAction,
    this.user,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 24.0,
            height: 24.0,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                AppIcons.icChevronLeftSvg,
                color: context.colors.label,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: GestureDetector(
              onTap: () {
                if (user?.isMe ?? false) {
                  navigationEventsHelper(const MyProfilePage());
                } else {
                  navigationEventsHelper(const FriendProfilePage());
                }
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10000.0),
                    child: CachedNetworkImage(
                      imageUrl: user?.avatar ?? '',
                      placeholder: (context, url) => Image.asset(
                        AppIcons.icAvatar,
                        width: 24.0,
                        height: 24.0,
                      ),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                      width: 24.0,
                      height: 24.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  Column(
                    children: [
                      Text(user?.name ?? ''),
                      const Text('Vừa xong'),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          GestureDetector(
            onTap: () {
              if (user?.isMe ?? false) {
                BottomSheetHelper.showBottomSheet(
                  body: const BottomSheetMyPostOptional(),
                );
              } else {
                BottomSheetHelper.showBottomSheet(
                  body: const BottomSheetPostOptional(),
                );
              }
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
