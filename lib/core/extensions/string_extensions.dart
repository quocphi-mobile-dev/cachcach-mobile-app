import 'package:cachcach/core/extensions/datetime_extensions.dart';
import 'package:intl/intl.dart';

extension StringExtensions on String {
  bool? toBool() {
    try {
      return this.toLowerCase() == 'true';
    } catch (e) {
      return null;
    }
  }

  int? toInt() => int.tryParse(this);

  num? get number => num.tryParse(this);

  DateTime? date(String pattern) {
    try {
      return DateFormat(pattern).parse(this);
    } catch (_) {
      return null;
    }
  }
}

extension StringNullX on String? {
  bool get isEmptyOrNull => this?.isEmpty ?? true;

  String? get fileName {
    return this?.split(r'/').last ?? null;
  }

  String? get fileExtension {
    return this?.split(r'.').last ?? null;
  }

  bool get isUrl {
    var regex = RegExp(
        r'^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&\(\)\*\+,;=.]+$');
    return regex.hasMatch(this ?? '');
  }

  String formatDate({
    String fromPattern = "yyyy-MM-dd",
    String toPattern = "y年M月d日",
  }) {
    if (this == null) return "";
    try {
      DateTime tempDate = new DateFormat(fromPattern).parse(this!);
      return tempDate.format(toPattern, 'ja_JP');
    } catch (e) {
      print("formatDate Exceptions: $e");
      return "";
    }
  }
}
