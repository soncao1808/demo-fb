import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    Key? key,
    this.haveIcon = false,
    this.hintText,
    this.value,
    required this.onChange,
    required this.onSummited,
    this.unFocus,
  }) : super(key: key);

  final bool haveIcon;
  final String? hintText;
  final String? value;
  final Function(String) onChange;
  final Function(String) onSummited;
  final Function? unFocus;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _textEditingController.text = widget.value ?? '';
    _textEditingController.moveCursorToEnd();
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: context.colors.cloudGray,
        ),
      ),
      child: TextField(
        controller: _textEditingController,
        maxLines: 1,
        keyboardType: TextInputType.text,
        textAlignVertical: TextAlignVertical.center,
        style: AppTextStyles.labelRegular16.copyWith(
          color: context.colors.label,
          height: 20 / 15,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hintText ?? '',
          hintStyle:
              AppTextStyles.labelRegular16.copyWith(color: context.colors.mistyQuartz, height: 0.6),
          isDense: true,
          contentPadding: const EdgeInsets.only(bottom: 5, left: 12.0, right: 12.0),
          prefixIcon: (widget.haveIcon)
              ? SvgPicture.asset(
                  AppIcons.icSearchBar,
                  width: 24.0,
                  height: 24.0,
                  color: context.colors.label,
                )
              : null,
        ),
        onChanged: (String text) {
          widget.onChange(text);
        },
        onSubmitted: (String text) {
          widget.onSummited(text);
        },
      ),
    );
  }
}
