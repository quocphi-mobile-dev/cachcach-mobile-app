import 'dart:math';

import 'package:flutter_screenutil/flutter_screenutil.dart';

extension MySizeExtensions on num {
  double get ic => min(w, h);
}
