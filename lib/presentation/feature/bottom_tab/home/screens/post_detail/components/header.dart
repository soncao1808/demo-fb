import 'package:cached_network_image/cached_network_image.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/data/models/post/user_post.dart';
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
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
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
          const SizedBox(width: 8.0),
          GestureDetector(
            onTap: () {
              // BottomSheetHelper.showBottomSheet(
              //   body: BottomSheetPost(),
              // );
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
