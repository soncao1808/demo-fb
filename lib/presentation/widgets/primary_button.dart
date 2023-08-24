import 'package:flutter/cupertino.dart';
import 'package:fbapp/presentation/base/base_page.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/core/resources/app_text_styles.dart';

// ignore: must_be_immutable
class PrimaryButton extends BasePage {
  final String title;
  final bool isDisable;
  final bool isLoading;
  final Color? backgroundColor;
  final Color? textColor;
  final Color? borderColor;
  final Color? colorLoading;
  VoidCallback? onPressed;
  EdgeInsets? padding;
  double? height;

  PrimaryButton({
    super.key,
    required this.title,
    this.isDisable = false,
    this.isLoading = false,
    this.backgroundColor,
    this.textColor,
    this.borderColor,
    this.onPressed,
    this.padding,
    this.height = 44.0,
    this.colorLoading,
  });
  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (widget.isDisable || widget.isLoading) ? null : widget.onPressed,
      child: Container(
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.0,
            color: widget.isDisable
                ? context.colors.border
                : widget.borderColor ?? context.colors.backgroundThirdary,
          ),
          color: widget.isDisable
              ? context.colors.border
              : widget.backgroundColor ?? context.colors.backgroundThirdary,
          borderRadius: const BorderRadius.all(
            Radius.circular(5.0),
          ),
        ),
        child: widget.isLoading
            ? Center(
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 16.0,
                        width: 16.0,
                        child: CupertinoActivityIndicator(
                          color: widget.colorLoading ??
                              context.colors.backgroundSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(
                child: Container(
                  padding: widget.padding,
                  child: Text(
                    widget.title.toString(),
                    style: AppTextStyles.labelBold14.copyWith(
                      color: widget.textColor ??
                          context.colors.backgroundSecondary,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
      ),
    );
  }
}
