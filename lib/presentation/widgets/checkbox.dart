// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

import '../base/base_page.dart';

class CheckBoxCustom extends BasePage {
  final Function onChanged;
  final bool isCheckBox;
  const CheckBoxCustom({
    super.key,
    required this.onChanged,
    required this.isCheckBox,
  });

  @override
  State<CheckBoxCustom> createState() =>
      _CheckBoxCustomState(onChanged: onChanged);
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  final Function onChanged;
  _CheckBoxCustomState({
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(widget.isCheckBox),
      splashColor: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.isCheckBox
                ? context.colors.backgroundPrimary
                : context.colors.border,
          ),
          color: widget.isCheckBox
              ? context.colors.backgroundPrimary
              : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(100.0)),
        ),
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: widget.isCheckBox
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 20,
                )
              : null,
        ),
      ),
    );
  }
}
