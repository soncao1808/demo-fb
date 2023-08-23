// ignore_for_file: always_specify_types

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fbapp/core/resources/app_colors.dart';
import 'package:fbapp/utilities/extensions/color_extensions.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
    required this.title,
    required this.subTitle,
    required this.isHorizontalDirection,
    required this.isShowButton,
    required this.indexOfBtHighlight,
    required this.buttonTitles,
    required this.onPressButton,
  });

  final String title;
  final String subTitle;
  final bool isHorizontalDirection;
  final bool isShowButton;
  final int indexOfBtHighlight;
  final List<String> buttonTitles;
  final Function(int? index)? onPressButton;

  @override
  Widget build(BuildContext context) {
    final List<Expanded> horizontalBts = buttonTitles
        .asMap()
        .map((int index, String item) {
          return MapEntry(
              index,
              Expanded(
                child: Container(
                  height: 40.w,
                  margin: const EdgeInsets.only(right: 8),
                  child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        onPressButton?.call(index);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                            indexOfBtHighlight == index
                                ? context.colors.textPrimary
                                : context.colors.textPrimary),
                      ),
                      child: Text(
                        item,
                        style: TextStyle(
                          fontSize: 14,
                          color: indexOfBtHighlight == index
                              ? Colors.white
                              : context.colors.textPrimary,
                        ),
                      )),
                ),
              ));
        })
        .values
        .toList();

    final List<Container> verticalBts = buttonTitles
        .asMap()
        .map((int index, String item) {
          return MapEntry(
              index,
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 8),
                height: 40.w,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      onPressButton?.call(index);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          indexOfBtHighlight == index
                              ? context.colors.textPrimary
                              : context.colors.textPrimary),
                    ),
                    child: Text(
                      item,
                      style: TextStyle(
                        fontSize: 14,
                        color: indexOfBtHighlight == index
                            ? Colors.white
                            : context.colors.textPrimary,
                      ),
                    )),
              ));
        })
        .values
        .toList();

    return SafeArea(
      child: Center(
        child: GestureDetector(
          onTapCancel: () => {},
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: IntrinsicHeight(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: (() {
                          Navigator.pop(context);
                          onPressButton?.call(null);
                        }),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 16),
                          decoration: BoxDecoration(
                              color: HexColor.fromHex("#FDF3EC"),
                              shape: BoxShape.circle),
                          padding: const EdgeInsets.all(4),
                          child: Icon(
                            Icons.close,
                            color: context.colors.backgroundPrimary,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 14, color: HexColor.fromHex("#1A1D28")),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subTitle,
                      style: TextStyle(
                          fontSize: 14, color: HexColor.fromHex("#83858B")),
                    ),
                    const SizedBox(height: 16),
                    isShowButton
                        ? isHorizontalDirection
                            ? Row(
                                children: horizontalBts,
                              )
                            : Column(
                                children: verticalBts,
                              )
                        : Container(),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
