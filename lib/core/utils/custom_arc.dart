import 'package:cachcach/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomArc extends CustomPainter {
  const CustomArc(
      {Key? key, required this.context, this.color = AppColors.blue});

  final BuildContext context;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;
    path.moveTo(0, size.height * 2 / 5);
    path.quadraticBezierTo(
        size.width / 2, size.height / 5, size.width, size.height * 2 / 5);

    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
