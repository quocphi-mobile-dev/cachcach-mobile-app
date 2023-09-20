import 'package:cachcach/core/languages/label.dart';
import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String format([
    String pattern = 'yyyy/MM/dd hh:mm',
    String locale = 'ja_JP',
  ]) {
    return DateFormat(pattern, locale).format(this);
  }

  String get formatYMDE => format('y年M月d日（E）');

  String get formatYMD => format('y年M月d日');

  String get formatHH => format('HH:mm');

  /// yyyy-MM-dd
  String get formatYYYYMMDD => format('yyyy-MM-dd');

  bool isSameDay(DateTime date) =>
      format('yyyyMMdd') == date.format('yyyyMMdd');

  bool isAfterDay(DateTime date) =>
      format('yyyyMMdd').compareTo(date.format('yyyyMMdd')) > 0;

  bool isBeforeDay(DateTime date) =>
      format('yyyyMMdd').compareTo(date.format('yyyyMMdd')) < 0;
}
