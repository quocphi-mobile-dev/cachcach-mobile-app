import 'package:intl/intl.dart';

extension IntExtensions on int {
  DateTime toDateTime() {
    return DateTime.fromMillisecondsSinceEpoch(this);
  }

  String toFileSize() {
    try {
      if (this > (1024 * 1024 * 1024)) {
        return "${(this / (1024 * 1024 * 1024)).floor()} gB";
      } else if (this > (1024 * 1024)) {
        return "${(this / (1024 * 1024)).floor()} mB";
      } else {
        return "${(this / 1024).floor()} kB";
      }
    } catch (e) {
      return "";
    }
  }
}

extension NumX on num {
  String get toYen {
    final format = NumberFormat('#,##0円');
    return format.format(this);
  }

  String get toPercent {
    return NumberFormat.percentPattern().format(this);
  }
}
