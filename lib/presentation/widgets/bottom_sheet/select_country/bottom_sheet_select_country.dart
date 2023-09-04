import 'package:fbapp/core/resources/resources.dart';
import 'package:fbapp/utilities/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomSheetSelectCountry extends StatefulWidget {
  const BottomSheetSelectCountry({super.key, required this.onConfirmSelect, this.currentCountry});

  final String? currentCountry;
  final Function(String) onConfirmSelect;

  @override
  State<BottomSheetSelectCountry> createState() => _BottomSheetSelectCountryState();
}

class _BottomSheetSelectCountryState extends State<BottomSheetSelectCountry> {
  String selectCountry = '';

  List<String> countries = [
    'Đà Nẵng',
    'Hà Nội',
    'Sài Gòn',
    'Gia Lai',
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      selectCountry = widget.currentCountry ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          height: (screenSize.height / 2) - 100,
          child: ListView.builder(
            itemCount: countries.length,
            padding: const EdgeInsets.only(
              bottom: 16.0,
            ),
            itemBuilder: (BuildContext context, int index) => renderItem(
              countries[index],
            ),
          ),
        ),
      ],
    );
  }

  Widget renderItem(String item) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          selectCountry = item;
          widget.onConfirmSelect(item);
          Navigator.of(context).pop();
        });
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 24.0,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item,
                      style: AppTextStyles.labelRegular14.copyWith(
                        color: context.colors.label,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                if (item == selectCountry && selectCountry.isNotNullOrBlank)
                  SvgPicture.asset(
                    AppIcons.icCheckCircleFill,
                    color: context.colors.backgroundPrimary,
                  ),
                const SizedBox(width: 16.0),
              ],
            ),
          ),
          Container(
            height: 1,
            color: context.colors.textDisable,
          )
        ],
      ),
    );
  }
}
