import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/data/models/post/post.dart';
import 'package:fbapp/injection/injector.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_presenter.dart';
import 'package:fbapp/presentation/feature/bottom_tab/home/bloc/home_state.dart';
import 'package:fbapp/presentation/widgets/custom_video/custom_video.dart';
import 'package:fbapp/presentation/widgets/item_post/components/bottom_action.dart';
import 'package:fbapp/presentation/widgets/item_post/components/bottom_count.dart';
import 'package:fbapp/presentation/widgets/item_post/components/thumbnail.dart';
import 'package:fbapp/presentation/widgets/item_post/components/top_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';

class ItemPost extends StatefulWidget {
  const ItemPost({
    super.key,
    required this.item,
    required this.onTap,
  });

  final Post item;
  final Function onTap;

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
      _controller.initialize();
    }
  }

  @override
  void dispose() {
    if (widget.item.contentType == 'video') {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => BlocConsumer<HomePresenter, HomeState>(
        bloc: _homePresenter,
        listenWhen: (HomeState previous, HomeState current) => (previous.status != current.status),
        listener: (BuildContext context, HomeState state) {},
        builder: (BuildContext context, HomeState state) {
          return GestureDetector(
            onTap: () {
              widget.onTap();
            },
            child: Container(
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
                  TopAction(item: widget.item),
                  const SizedBox(height: 8.0),
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
                  BottomCount(item: widget.item),
                  const Divider(),
                  const BottomAction()
                ],
              ),
            ),
          );
        },
      );

  Widget buildContent() {
    if (widget.item.contentType == 'image') {
      return Thumbnail(url: widget.item.imageUrl ?? "");
    }
    return CustomVideo(controller: _controller);
  }
}
