// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/presentation/base/base_page.dart';

class SelectField extends BasePage {
  const SelectField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.value,
    this.iconRight = AppIcons.icChevronDown,
    required this.onPressed,
    this.isRequired = false,
    this.isLabel = true,
    this.iconColor,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final String value;
  final String iconRight;
  final Function onPressed;
  final bool? isRequired;
  final bool? isLabel;
  final Color? iconColor;

  @override
  State<SelectField> createState() => _SelectFieldState(
        labelText: labelText,
        value: value,
        hintText: hintText,
        iconRight: iconRight,
        isLabel: isLabel ?? true,
        onPressed: onPressed,
        isRequired: isRequired,
      );
}

class _SelectFieldState extends State<SelectField> {
  String labelText;
  String value;
  String iconRight;
  String hintText;
  Function onPressed;
  final bool? isRequired;
  final bool isLabel;

  _SelectFieldState({
    required this.labelText,
    required this.hintText,
    required this.value,
    required this.iconRight,
    required this.onPressed,
    required this.isRequired,
    required this.isLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (isLabel)
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
        GestureDetector(
          onTap: () => widget.onPressed(context),
          child: TextFormField(
            autofocus: false,
            controller: TextEditingController(text: widget.value),
            enabled: false,
            decoration: InputDecoration(
              hintText: hintText,
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: context.colors.error, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(width: 1, color: context.colors.borderInput),
              ),
              labelStyle: AppTextStyles.labelRegular14.copyWith(
                color: context.colors.textPrimary,
              ),
              isDense: true,
              contentPadding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
              suffixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: SizedBox(
                  height: 16,
                  width: 16,
                  child: Image.asset(
                    iconRight,
                    color: widget.iconColor,
                  ),
                ),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.colors.borderInput,
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: context.colors.borderInput, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: context.colors.borderInput, width: 1),
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
