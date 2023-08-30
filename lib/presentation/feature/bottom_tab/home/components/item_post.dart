import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/components/bottom_sheet_post.dart';
import 'package:fbapp/utilities/helpers/bottom_sheet_helper/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:video_player/video_player.dart';

class ItemPost extends StatefulWidget {
  const ItemPost({
    super.key,
    required this.item,
  });

  final Post item;

  @override
  State<ItemPost> createState() => _ItemPostState();
}

class _ItemPostState extends State<ItemPost> {
  final HomePresenter _homePresenter = injector.get<HomePresenter>();
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    if (widget.item.contentType == 'video') {
      _controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.item.videoUrl ?? ''),
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
      );

      _controller.addListener(() {
        setState(() {});
      });
      _controller.setLooping(true);
      _controller.initialize();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<HomePresenter, HomeState>(
        bloc: _homePresenter,
        listenWhen: (HomeState previous, HomeState current) =>
            (previous.status != current.status),
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) {
          return Container(
            margin: const EdgeInsets.only(top: 12.0),
            decoration: BoxDecoration(
              color: context.colors.backgroundWhite,
              border: Border.symmetric(
                horizontal: BorderSide(
                  width: 1,
                  color: context.colors.creamy,
                ),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 12.0),
                buildTop(),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: Text(
                    widget.item.name ?? "",
                    style: AppTextStyles.labelRegular14.copyWith(
                      color: context.colors.label,
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                buildContent(),
                buildBotomCount(),
                const Divider(),
                buildBotom()
              ],
            ),
          );
        },
      );

  Widget buildTop() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            widget.item.user?.avatar ?? "",
            width: 40.0,
            height: 40.0,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            flex: 1,
            child: Text(
              widget.item.user?.name ?? "",
              style: AppTextStyles.labelBold14.copyWith(
                color: context.colors.label,
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          GestureDetector(
            onTap: () {
              BottomSheetHelper.showBottomSheet(
                body: BottomSheetPost(),
              );
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

  Widget buildBotom() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SvgPicture.asset(
                  AppIcons.icLike,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                ),
                const SizedBox(width: 6.0),
                Text(
                  AppLocalizations.of(context)!.text_post_like,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  AppIcons.icComment,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                ),
                const SizedBox(width: 6.0),
                Text(
                  AppLocalizations.of(context)!.text_post_comment,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SvgPicture.asset(
                  AppIcons.icLink,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                ),
                const SizedBox(width: 6.0),
                Text(
                  AppLocalizations.of(context)!.text_post_share,
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBotomCount() {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          Row(
            children: <Widget>[
              Image.asset(
                AppIcons.icLikeCount,
                width: 24.0,
                height: 24.0,
              ),
              const SizedBox(width: 4.0),
              Text(
                (widget.item.likeCount ?? 0).toString(),
                style: AppTextStyles.labelRegular14.copyWith(
                  color: context.colors.label,
                ),
              ),
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "${widget.item.commentCount ?? 0} ${AppLocalizations.of(context)!.text_post_comment.toLowerCase()}",
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
                const SizedBox(width: 12.0),
                Text(
                  "${widget.item.shareCount ?? 0} ${AppLocalizations.of(context)!.text_post_share_count.toLowerCase()}",
                  style: AppTextStyles.labelRegular14.copyWith(
                    color: context.colors.label,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildContent() {
    if (widget.item.contentType == 'image') {
      return ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5), topRight: Radius.circular(5)),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                AppImages.eventImageTest,
                height: 220.0,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      );
    }
    return AspectRatio(
      aspectRatio: _controller.value.aspectRatio,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          VideoPlayer(_controller),
          ClosedCaption(text: _controller.value.caption.text),
          _ControlsOverlay(controller: _controller),
          VideoProgressIndicator(_controller, allowScrubbing: true),
        ],
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay({required this.controller});

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: controller.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        GestureDetector(
          onTap: () {
            controller.value.isPlaying ? controller.pause() : controller.play();
          },
        ),
      ],
    );
  }
}
