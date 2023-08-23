import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/app_icons.dart';
import 'package:fbapp/utilities/helpers/image_cached/image_cached.dart';

class Avatar extends StatefulWidget {
  final String url;
  final double width;
  final double height;
  final double circular;
  final String iconDefault;
  const Avatar({
    required this.url,
    this.width = 48,
    this.height = 48,
    this.circular = 5.0,
    this.iconDefault = AppIcons.icActiveAccount,
    super.key,
  });

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    if (widget.url == '') {
      return SizedBox(
        width: widget.width,
        height: widget.height,
        child: Image.asset(widget.iconDefault),
      );
    }

    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.circular),
      child: ImageCached(
        imageUrl: widget.url,
        fit: BoxFit.cover,
        width: widget.width,
        height: widget.height,
        circular: widget.circular,
      ),
    );
  }
}
