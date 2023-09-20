import 'package:cachcach/core/extensions/extensions.dart';
import 'package:get/get.dart';

extension LabelX on Label {
  /// Translate label to local language.
  String get tr => text.tr;
}

enum Label {
  /* A */
  applicationLabel,
}
