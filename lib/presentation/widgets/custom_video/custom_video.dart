// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CustomVideo extends StatelessWidget {
  const CustomVideo({
    super.key,
    required this.controller,
  });

  final VideoPlayerController controller;

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
