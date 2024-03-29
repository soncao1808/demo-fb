import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/view_like/view_like.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/screens/view_share/view_share.dart';
import 'package:fbapp/presentation/feature/main/bloc/main_page_state.dart';
import 'package:fbapp/presentation/widgets/bottom_sheet/share/bottom_sheet_share.dart';
import 'package:fbapp/presentation/widgets/custom_video/custom_video.dart';
import 'package:fbapp/presentation/widgets/item_post/components/bottom_action.dart';
import 'package:fbapp/presentation/widgets/item_post/components/bottom_count.dart';
import 'package:fbapp/presentation/widgets/item_post/components/thumbnail.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ContentPostDetail extends StatefulWidget {
  final Post? item;

  const ContentPostDetail({
    required this.item,
    super.key,
  });

  @override
  State<ContentPostDetail> createState() => _ContentPostDetailState();
}

class _ContentPostDetailState extends State<ContentPostDetail> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.item?.contentType == 'video') {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.item?.videoUrl ?? ''),
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
      );

      _controller.addListener(() {
        setState(() {});
      });
      _controller.initialize();
    }
  }

  @override
  void dispose() {
    if (widget.item?.contentType == 'video') {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Text(
            widget.item?.name ?? '',
            style: AppTextStyles.labelRegular14.copyWith(
              color: context.colors.label,
            ),
          ),
        ),
        const SizedBox(height: 12.0),
        buildContent(),
        BottomCount(
          item: widget.item,
          onTapLike: () {
            navigationEventsHelper(const ViewLikePage(id: 1));
          },
          onTapShare: () {
            navigationEventsHelper(const ViewSharePage(id: 1));
          },
        ),
        const Divider(),
        BottomAction(
          onTabShare: () {
            BottomSheetHelper.showBottomSheet(
              body: const BottomSheetShare(),
            );
          },
        )
      ],
    );
  }

  Widget buildContent() {
    if (widget.item?.contentType == 'image') {
      return Thumbnail(url: widget.item?.imageUrl ?? "");
    }
    return CustomVideo(controller: _controller);
  }
}
