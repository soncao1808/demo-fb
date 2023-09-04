// ignore_for_file: no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

import '../base/base_page.dart';

class CheckBoxCustom extends BasePage {
  final Function onChanged;
  final bool checked;
  final double? borderRadius;

  const CheckBoxCustom({
    super.key,
    required this.onChanged,
    required this.checked,
    this.borderRadius
  });

  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onChanged.call();
      },
      splashColor: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.checked
                ? context.colors.backgroundPrimary
                : context.colors.border,
          ),
          color: widget.checked
              ? context.colors.backgroundPrimary
              : Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius ?? 100.0)),
        ),
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: widget.checked
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
