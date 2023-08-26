import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

import 'custom_text_form_field_widget.dart';

class TextInputCustom extends StatelessWidget {
  const TextInputCustom({
    super.key,
    required this.onChanged,
    required this.hintText,
    required this.labelText,
    this.errorMessage,
    this.isRequired = true,
    this.suffixIcon,
    this.isPasswordField = false,
    this.isDisable = false,
    this.keyboardType = TextInputType.text,
    this.value,
    this.cursorColor,
    this.maxLines = 1,
    this.minLines = 1,
    this.contentPadding = const EdgeInsets.symmetric(
      horizontal: 16.0,
    ),
    this.scrollPadding,
    this.filled,
    this.fillColor,
  });

  final Function onChanged;
  final String hintText;
  final String? errorMessage;
  final String labelText;
  final bool? isRequired;
  final bool isPasswordField;
  final bool isDisable;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final TextEditingValue? value;
  final Color? cursorColor;
  final int? maxLines;
  final int? minLines;
  final EdgeInsets? contentPadding;
  final EdgeInsets? scrollPadding;
  final bool? filled;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: labelText,
                style: AppTextStyles.labelBold14.copyWith(
                  color: context.colors.label,
                ),
                children: <TextSpan>[
                  if (isRequired == true)
                    TextSpan(
                      text: ' *',
                      style: AppTextStyles.labelMedium14.copyWith(
                        color: context.colors.required,
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 8.0),
        CustomTextFormFieldWidget(
          minLines: minLines,
          maxLines: maxLines,
          hintStyle: AppTextStyles.labelRegular13,
          hintText: hintText,
          contentPadding: contentPadding,
          scrollPadding: scrollPadding,
          keyboardType: keyboardType,
          borderInput: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.colors.borderInput,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          focusInput: OutlineInputBorder(
            borderSide: BorderSide(color: context.colors.borderInput, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          disableInput: OutlineInputBorder(
            borderSide: BorderSide(color: context.colors.borderInput, width: 1),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          isPasswordField: isPasswordField,
          errorText: errorMessage,
          errorStyle: AppTextStyles.labelRegular13
              .copyWith(color: context.colors.error),
          onChanged: (String value) => onChanged(value),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: errorMessage != "" && errorMessage != null
                  ? context.colors.error
                  : context.colors.borderInput,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(5.0)),
          ),
          suffixIcon: suffixIcon,
          isDisable: !isDisable,
          filled: filled ?? isDisable,
          fillColor: fillColor,
          controller: value,
          cursorColor: cursorColor,
        ),
      ],
    );
  }
}
