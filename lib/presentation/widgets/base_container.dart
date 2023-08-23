import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/utilities/helpers/appbar_helper/appbar_helper.dart';

class BaseContainer extends StatelessWidget {
  final Widget body;
  final Color? backgroundColor;
  final Color? backgroundColorAppBar;
  const BaseContainer({
    super.key,
    required this.body,
    this.backgroundColor,
    this.backgroundColorAppBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor ?? context.colors.backgroundSecondary,
      appBar: appBarCustom(backgroundColorAppBar),
      body: body,
    );
  }
}
