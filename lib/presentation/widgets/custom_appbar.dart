// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/utilities/helpers/app_helper/device_info_helper.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    this.label = "",
    this.elevationShadow = 0,
    this.isAction = false,
    this.isBack = true,
    this.onPressGoBack,
    this.handleAction,
    required this.backgroundColorAppBar,
    this.isBorderBottom = false,
    this.iconAction = AppIcons.icTrash,
  });

  final String label;
  final double? elevationShadow;
  final bool isAction;
  final bool isBack;
  final VoidCallback? onPressGoBack;
  final VoidCallback? handleAction;
  final Color backgroundColorAppBar;
  final bool isBorderBottom;
  final String iconAction;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  Widget leading() {
    if (widget.isBack) {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        child: GestureDetector(
          onTap: () {
            if (widget.onPressGoBack != null) {
              widget.onPressGoBack!();
              return;
            }
            Navigator.pop(context);
          },
          child: Image.asset(AppIcons.icArrowLeft),
        ),
      );
    }

    return Container();
  }

  Widget renderTitle() {
    if (widget.label == "") {
      return Container();
    }
    return Text(
      widget.label,
      style: AppTextStyles.labelBold16.copyWith(
        color: context.colors.label,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: false,
      child: AppBar(
        title: renderTitle(),
        centerTitle: true,
        backgroundColor: widget.backgroundColorAppBar,
        leadingWidth: 50,
        elevation: widget.elevationShadow ?? 1,
        leading: leading(),
        actions: <Widget>[
          if (widget.isAction)
            GestureDetector(
              onTap: () => widget.handleAction?.call(),
              child: Container(
                width: 28,
                height: 28,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                alignment: Alignment.center,
                child: Image.asset(
                  widget.iconAction,
                ),
              ),
            )
        ],
        shape: widget.isBorderBottom
            ? Border(
                bottom: BorderSide(
                  color: context.colors.border,
                  width: 0.5,
                ),
              )
            : null,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: widget.backgroundColorAppBar,
          statusBarIconBrightness:
              DeviceInfoHelper().isAndroid ? Brightness.dark : Brightness.light,
          statusBarBrightness:
              DeviceInfoHelper().isAndroid ? Brightness.dark : Brightness.light,
        ),
      ),
    );
  }
}
