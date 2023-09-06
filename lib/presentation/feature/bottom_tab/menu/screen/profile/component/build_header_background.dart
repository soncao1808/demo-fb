import 'package:dartx/dartx.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/shimmer_widget.dart';
import 'package:fbapp/utilities/helpers/image_cached/image_cached.dart';
import 'package:flutter/material.dart';

class BuildHeaderBackground extends StatefulWidget {
  const BuildHeaderBackground({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<BuildHeaderBackground> createState() => _BuildHeaderBackgroundState();
}

class _BuildHeaderBackgroundState extends State<BuildHeaderBackground> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 164,
          width: MediaQuery.of(context).size.width,
          child: (widget.url.isBlank)
              ? const ShimmerWidget()
              : ImageCached(
                  imageUrl: widget.url,
                  fit: BoxFit.fill,
                ),
        ),
        Container(color: context.colors.backgroundWhite, height: 45),
      ],
    );
  }
}
