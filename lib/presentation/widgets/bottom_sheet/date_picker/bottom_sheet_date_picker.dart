import 'package:fbapp/core/resources/resources.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BottomSheetDatePicker extends StatefulWidget {
  const BottomSheetDatePicker({
    super.key,
    this.currentDate,
    required this.onConfirmSelect,
  });

  final DateTime? currentDate;
  final Function(DateTime) onConfirmSelect;

  @override
  State<BottomSheetDatePicker> createState() => _DataOfBirthdayBottomSheetState();
}

class _DataOfBirthdayBottomSheetState extends State<BottomSheetDatePicker> {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    DateTime selectDate = widget.currentDate ?? DateTime.now();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Text(
                  AppLocalizations.of(context)!.text_common_cancel,
                  style: AppTextStyles.labelBold14.copyWith(
                    color: context.colors.textDisable,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  widget.onConfirmSelect(selectDate);
                  Navigator.of(context).pop();
                },
                child: Text(
                  AppLocalizations.of(context)!.text_common_choose,
                  style: AppTextStyles.labelBold14.copyWith(
                    color: context.colors.backgroundPrimary,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: (screenSize.height / 2) - 100,
          child: Center(
            child: CupertinoDatePicker(
              maximumYear: DateTime.now().year,
              initialDateTime: selectDate,
              use24hFormat: true,
              onDateTimeChanged: (DateTime dateTime) {
                selectDate = dateTime;
              },
              mode: CupertinoDatePickerMode.date,
            ),
          ),
        ),
      ],
    );
  }
}
