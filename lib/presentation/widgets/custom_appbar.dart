// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/utilities/helpers/app_helper/device_info_helper.dart';

class CustomAppBar extends AppBar {
  CustomAppBar({
    super.key,
    this.label = "",
    this.labelStyle,
    this.elevationShadow = 0,
    this.isAction = false,
    this.isBack = true,
    this.icBackColor,
    this.onPressGoBack,
    required this.backgroundColorAppBar,
    this.isBorderBottom = false,
    this.actions,
    this.brightness,
    this.customIcBack,
  });

  final String label;
  final TextStyle? labelStyle;
  final double? elevationShadow;
  final bool isAction;
  final bool isBack;
  final VoidCallback? onPressGoBack;
  final Color backgroundColorAppBar;
  final bool isBorderBottom;
  final List<Widget>? actions;
  final Color? icBackColor;
  final Brightness? brightness;
  final Widget? customIcBack;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  Widget leading() {
    if (widget.isBack) {
      return Container(
        width: 24.0,
        height: 24.0,
        margin: const EdgeInsets.symmetric(vertical: 16.0),
        child: GestureDetector(
          onTap: () {
            if (widget.onPressGoBack != null) {
              widget.onPressGoBack!();
              return;
            }
            Navigator.pop(context);
          },
          child: widget.customIcBack ?? SvgPicture.asset(AppIcons.icChevronLeftSvg,
              color: widget.icBackColor ?? context.colors.label),
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
          ).merge(widget.labelStyle),
      overflow: TextOverflow.ellipsis,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      left: false,
      right: false,
      top: false,
      child: AppBar(
        title: Row(
          children: [
            leading(),
            const SizedBox(
              width: 16,
            ),
            Expanded(child: renderTitle()),
            ...?widget.actions
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: false,
        backgroundColor: widget.backgroundColorAppBar,
        elevation: widget.elevationShadow ?? 1,
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
          statusBarIconBrightness: DeviceInfoHelper().isAndroid
              ? (widget.brightness ?? Brightness.dark)
              : (widget.brightness ?? Brightness.light),
          statusBarBrightness: DeviceInfoHelper().isAndroid
              ? (widget.brightness ?? Brightness.dark)
              : (widget.brightness ?? Brightness.light),
        ),
      ),
    );
  }
}
