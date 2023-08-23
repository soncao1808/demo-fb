import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

class ImageCached extends StatelessWidget {
  final String imageUrl;
  final double? width, height;
  final BoxFit? fit;
  final double circular;

  const ImageCached({
    super.key,
    required this.imageUrl,
    this.width,
    this.height,
    this.fit,
    this.circular = 0,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(circular),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        width: width,
        height: height,
        fit: fit,
        progressIndicatorBuilder:
            (BuildContext context, String url, DownloadProgress progress) =>
                OverflowBox(
          maxHeight: 2,
          minHeight: 2,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: LinearProgressIndicator(
              value: progress.progress,
              color: context.colors.backgroundPrimary,
              backgroundColor: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
