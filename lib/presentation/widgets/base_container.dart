import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/utilities/helpers/appbar_helper/appbar_helper.dart';

class BaseContainer extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final Color? backgroundColorAppBar;
  final bool? hasBackgroundImage;
  const BaseContainer({
    super.key,
    required this.body,
    this.backgroundColor,
    this.backgroundColorAppBar,
    this.hasBackgroundImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? context.colors.backgroundSecondary,
      appBar: appBarCustom(backgroundColorAppBar),
      body: hasBackgroundImage!
          ? Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.backgroundBase),
                  fit: BoxFit.cover,
                ),
              ),
              height: MediaQuery.of(context).size.height,
              child: body,
            )
          : body,
    );
  }
}
