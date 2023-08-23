import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fbapp/core/resources/app_colors.dart';

class RadioButton extends StatefulWidget {
  final bool isChecked;
  final Function onTap;

  const RadioButton({
    required this.isChecked,
    required this.onTap,
    super.key,
  });

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () => widget.onTap(),
          child: Container(
            width: 20.0.w,
            height: 20.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: context.colors.backgroundSecondary,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: widget.isChecked
                      ? context.colors.backgroundPrimary
                      : context.colors.mistyQuartz,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
        ),
        if (widget.isChecked)
          Container(
            width: 10.0.w,
            height: 10.0.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: context.colors.backgroundPrimary,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: context.colors.backgroundSecondary,
                  spreadRadius: 5,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
