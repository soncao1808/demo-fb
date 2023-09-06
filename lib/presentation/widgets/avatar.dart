import 'package:dartx/dartx.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/widgets/shimmer_widget.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/utilities/helpers/image_cached/image_cached.dart';

class Avatar extends StatefulWidget {
  final String url;
  final double width;
  final double height;
  final double circular;
  final String iconDefault;
  final double borderWidth;
  final Color? borderColor;

  const Avatar({
    required this.url,
    this.width = 48,
    this.height = 48,
    this.circular = 5.0,
    this.iconDefault = '',
    this.borderWidth = 0.0,
    this.borderColor,
    super.key,
  });

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    if (widget.url == '') {
      return Container(
        padding: (widget.borderWidth - 1.2 > 0)
            ? EdgeInsets.all(widget.borderWidth - 1.2)
            : EdgeInsets.zero,
        decoration: BoxDecoration(
            color: widget.borderColor ?? context.colors.backgroundWhite,
            borderRadius: BorderRadius.circular(widget.circular),
            border: Border.all(
                width: (widget.borderWidth - 1.2 > 0) ? 1.2 : 0,
                color: context.colors.unselectedBackground)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.circular),
          child: SizedBox(
            width: widget.width,
            height: widget.height,
            child: (widget.iconDefault.isNotNullOrBlank)
                ? Image.asset(widget.iconDefault)
                : const ShimmerWidget(),
          ),
        ),
      );
    }

    return Container(
      padding: (widget.borderWidth - 1.2 > 0)
          ? EdgeInsets.all(widget.borderWidth - 1.2)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
          color: widget.borderColor ?? context.colors.backgroundWhite,
          borderRadius: BorderRadius.circular(widget.circular),
          border: Border.all(
              width: (widget.borderWidth - 1.2 > 0) ? 1.2 : 0,
              color: context.colors.unselectedBackground)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(widget.circular),
        child: ImageCached(
          imageUrl: widget.url,
          fit: BoxFit.cover,
          width: widget.width,
          height: widget.height,
          circular: widget.circular,
        ),
      ),
    );
  }
}
