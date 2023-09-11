import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideo1 extends StatefulWidget {
  final String videoUrl;

  const CustomVideo1({
    super.key,
    required this.videoUrl,
  });

  @override
  State<CustomVideo1> createState() => _CustomVideo1State();
}

class _CustomVideo1State extends State<CustomVideo1> {
  late VideoPlayerController controller;

  @override
  void initState() {
    if (widget.videoUrl.contains("https://")) {
      controller = VideoPlayerController.networkUrl(
        Uri.parse(widget.videoUrl),
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
      );
    } else {
      controller = VideoPlayerController.asset(
        widget.videoUrl,
        videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true),
      );
    }

    controller.addListener(() {
      setState(() {});
    });
    controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          VideoPlayer(controller),
          ClosedCaption(text: controller.value.caption.text),
          Stack(
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
                  controller.value.isPlaying
                      ? controller.pause()
                      : controller.play();
                },
              ),
            ],
          ),
          VideoProgressIndicator(controller, allowScrubbing: true),
        ],
      ),
    );
  }
}
