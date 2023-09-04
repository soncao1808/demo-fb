import 'package:fbapp/presentation/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:fbapp/core/resources/resources.dart';

class CustomCheckBoxList extends StatelessWidget {
  const CustomCheckBoxList({
    super.key,
    this.labelText,
    this.required = false,
    required this.child,
  });

  final String? labelText;
  final bool? required;
  final List<Widget> child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                  if (required == true)
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
        const SizedBox(height: 12.0),
        Row(
          children: child,
        )
      ],
    );
  }
}

class CustomCheckBoxItem extends StatelessWidget {
  const CustomCheckBoxItem({
    super.key,
    required this.labelText,
    required this.onTap,
    required this.current,
    required this.checked,
  });

  final String labelText;
  final Function onTap;
  final dynamic current;
  final dynamic checked;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          RadioButton(
            isChecked: current == checked,
            onTap: () {
              onTap.call();
            },
          ),
          const SizedBox(width: 8),
          Text(
            labelText,
            style: AppTextStyles.labelRegular14.copyWith(
              color: context.colors.label,
            ),
          ),
        ],
      ),
    );
  }
}
