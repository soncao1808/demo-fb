import 'dart:math';
import 'package:fbapp/utilities/helpers/timer_helper/timer_helper.dart';
import 'package:sprintf/sprintf.dart';
import 'package:flutter/widgets.dart';

extension StringExNullable on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNullOrBlank =>
      this == null || this!.isEmpty || this!.trim().isEmpty;

  bool get isNotNullOrEmpty => this == null || this!.isNotEmpty;

  bool get isCheckComeIn {
    if (this == '' || this == null) return true;
    DateTime convertTimeComeIn = this!.convertStringToFullDateLocal;

    final DateTime endDT = DateTime(
      convertTimeComeIn.year,
      convertTimeComeIn.month,
      convertTimeComeIn.day,
      08,
      31,
    );

    return convertTimeComeIn.isBefore(endDT);
  }

  bool get isCheckComeOut {
    if (this == '' || this == null) return true;
    DateTime convertTimeComeOut = this!.convertStringToFullDateLocal;

    final DateTime endDT = DateTime(
      convertTimeComeOut.year,
      convertTimeComeOut.month,
      convertTimeComeOut.day,
      17,
      29,
    );

    return convertTimeComeOut.isAfter(endDT);
  }
}

extension StringEx on String {
  bool get isNotNullOrBlank =>
      this != 'null' && isNotEmpty && trim().isNotEmpty;

  String limit(int charCount, {bool ellipsizeMode = false}) {
    if (isNullOrBlank) {
      return this;
    } else if (length <= charCount) {
      return this;
    } else {
      return ellipsizeMode
          ? '${substring(0, charCount)}...'
          : substring(0, charCount);
    }
  }

  bool isWithinMaxLines({
    required int maxLines,
    required double maxWidth,
    double minWidth = 0.0,
    TextStyle style = const TextStyle(),
  }) {
    if (isNullOrBlank) {
      return false;
    }

    final TextSpan text = TextSpan(text: this, style: style);
    final TextPainter textPainter = TextPainter(
      maxLines: maxLines,
      textAlign: TextAlign.left,
      textDirection: TextDirection.ltr,
      text: text,
    );

    textPainter.layout(minWidth: minWidth, maxWidth: maxWidth);

    return textPainter.didExceedMaxLines;
  }

  String withDate(String date) => replaceAll('[DATE]', date);

  String withNumber(num number) => replaceAll('[NUMBER]', number.toString());

  String withEmail(String email) => replaceAll('[EMAIL]', email);

  bool get isValidUsername => isNotNullOrBlank;

  String generateRandomString(int len) {
    final Random r = Random();

    return String.fromCharCodes(
      List.generate(len, (int index) => r.nextInt(33) + 89),
    );
  }

  DateTime get convertStringToDateLocal {
    final DateTime timeNow = DateTime.parse(this).toLocal();

    int month = timeNow.month;

    int year = timeNow.year;

    int days = int.parse(DateTime.parse(this).toLocal().days);

    return DateTime(year, month, days, 0, 0, 0).toLocal();
  }

  DateTime get convertStringToFullDateLocal {
    final DateTime timeNow = DateTime.parse(this).toLocal();
    int month = timeNow.month;

    int year = timeNow.year;

    int days = int.parse(timeNow.days);

    int hour = timeNow.hour;

    int minute = timeNow.minute;

    return DateTime(year, month, days, hour, minute, 0);
  }

  DateTime get convertStringToFullDateUtc {
    final DateTime timeNow = DateTime.parse(this);
    int month = timeNow.month;

    int year = timeNow.year;

    int days = int.parse(timeNow.days);

    int hour = timeNow.hour;

    int minute = timeNow.minute;

    return DateTime(year, month, days, hour, minute, 0);
  }

  String get formatDateToUtc {
    return convertStringToDateLocal.toUtc().toString().replaceAll(' ', 'T');
  }

  String get formatCustomFullDateUtc {
    return convertStringToFullDateLocal
        .toString()
        .replaceAll(' ', 'T')
        .replaceAll('.000', 'Z');
  }

  String get formatCustomDateUtc {
    return convertStringToDateLocal
        .toString()
        .replaceAll(' ', 'T')
        .replaceAll('.000', 'Z');
  }

  String get formatFullDateToUtc {
    return convertStringToFullDateLocal.toUtc().toString().replaceAll(' ', 'T');
  }

  double get convertStringToDouble => double.parse(this);

  String get fileNameShort {
    String fileName = split('/').last;
    String extention = split('.').last;
    if (length > 8) {
      return '${fileName.substring(0, 8)}...$extention';
    }
    return fileName;
  }
}

extension StringFormatExtension on String {
  String format(List<dynamic> arguments) => sprintf(this, arguments);

  String convertEmojiCodeToUnicode() {
    final List<String> codePoints = split('-');
    final List<int> unicode =
        codePoints.map((String code) => int.parse(code, radix: 16)).toList();
    final String unicodeString =
        unicode.map((int code) => String.fromCharCode(code)).join();
    return unicodeString;
  }
}
