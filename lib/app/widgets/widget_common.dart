import 'package:cachcach/core/theme/colors.dart';
import 'package:flutter/material.dart';

Widget space({double? w, double? h}) {
  return SizedBox(
    width: w,
    height: h,
  );
}

Widget moreWidget() => const Text('・\n・\n・\n', textAlign: TextAlign.center);

Widget divider({
  double height = 1,
  double? thickness,
  Color? color = AppColors.divider,
  double? indent,
  double? endIndent,
  EdgeInsetsGeometry? margin,
}) {
  var divider = Divider(
    height: height,
    thickness: thickness ?? height,
    color: color,
    indent: indent,
    endIndent: endIndent ?? indent,
  );

  if (margin == null) return divider;

  return Padding(padding: margin, child: divider);
}
