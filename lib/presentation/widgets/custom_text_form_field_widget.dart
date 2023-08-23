import 'package:flutter/material.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    required this.keyboardType,
    required this.onChanged,
    Key? key,
    this.labelText,
    this.hintText,
    this.hintStyle,
    this.errorText,
    this.errorStyle,
    this.labelStar,
    this.borderInput,
    this.suffixIcon,
    this.focusInput,
    this.disableInput,
    this.isPasswordField = false,
    this.isDisable = false,
    this.filled = false,
    this.textInputAction = TextInputAction.done,
    this.contentPadding,
    this.errorMaxLines = 2,
    this.focusedErrorBorder,
    this.controller,
    this.cursorColor,
    this.maxLines,
    this.minLines,
    this.scrollPadding,
  }) : super(key: key);

  final String? labelText;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? errorStyle;
  final String? errorText;
  final Widget? labelStar;
  final InputBorder? borderInput;
  final OutlineInputBorder? focusInput;
  final OutlineInputBorder? disableInput;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool isPasswordField;
  final bool isDisable;
  final bool filled;
  final TextInputAction textInputAction;
  final ValueChanged<String>? onChanged;
  final EdgeInsetsGeometry? contentPadding;
  final OutlineInputBorder? focusedErrorBorder;
  final int? errorMaxLines;
  final TextEditingValue? controller;
  final Color? cursorColor;
  final int? maxLines;
  final int? minLines;
  final EdgeInsets? scrollPadding;

  @override
  Widget build(BuildContext context) => TextFormField(
        controller: controller != null
            ? TextEditingController.fromValue(controller)
            : null,
        keyboardType: keyboardType,
        readOnly: !isDisable,
        minLines: minLines,
        maxLines: maxLines,
        scrollPadding: scrollPadding ?? const EdgeInsets.all(20.0),
        decoration: InputDecoration(
          filled: filled,
          labelText: labelText,
          hintText: hintText,
          hintStyle: hintStyle,
          errorText: errorText,
          errorStyle: errorStyle,
          label: labelStar,
          border: borderInput,
          suffixIcon: suffixIcon,
          focusedBorder: focusInput,
          focusedErrorBorder: focusedErrorBorder,
          enabledBorder: disableInput,
          contentPadding: contentPadding,
          errorMaxLines: errorMaxLines,
        ),
        textInputAction: textInputAction,
        obscureText: isPasswordField,
        onChanged: onChanged,
        cursorColor: cursorColor,
      );
}
