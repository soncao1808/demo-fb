import 'package:intl/intl.dart';

String formatCurrencyVND(double value) {
  if (value < 0) return '0 đ';
  NumberFormat currencyFormat =
      NumberFormat.currency(locale: 'vi_VN', symbol: 'đ');
  return currencyFormat.format(value);
}
