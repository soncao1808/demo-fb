// ignore_for_file: always_specify_types

import 'package:fbapp/presentation/widgets/custom_photo_view/custom_photo_view.dart';
import 'package:flutter/material.dart';

class Thumbnail extends StatelessWidget {
  const Thumbnail({
    super.key,
    required this.url,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    return CustomPhotoView(url: url);
  }
}
