import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/data/models/post/user_post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/view_like/view_like.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/avatar.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/share/bottom_sheet_share.dart';
import 'package:fbapp/presentation/widgets/custom_video/custom_video.dart';
import 'package:fbapp/presentation/widgets/item_post/components/bottom_action.dart';
import 'package:fbapp/presentation/widgets/item_post/components/bottom_count.dart';
import 'package:fbapp/presentation/widgets/item_post/components/thumbnail.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

class ItemViewLike extends StatefulWidget {
  final UserPost? item;

  const ItemViewLike({
    required this.item,
    super.key,
  });

  @override
  State<ItemViewLike> createState() => _ItemViewLikeState();
}

class _ItemViewLikeState extends State<ItemViewLike> {
  late VideoPlayerController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Avatar(url: widget.item?.avatar ?? '', circular: 100),
                const SizedBox(
                  width: 4.0,
                ),
                Text(widget.item?.name ?? '')
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                color: context.colors.backgroundThirdary,
                borderRadius: BorderRadius.circular(8),
              ),
              padding:
                  const EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.9),
              child: SvgPicture.asset(AppIcons.icAddUser),
            ),
          )
        ],
      ),
    );
  }
}
