import 'package:cachcach/core/theme/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_styles.dart';
import '../../../../routes/routes.dart';
import '../../../widgets/widget_common.dart';

class EndGameScreen extends StatelessWidget {
  const EndGameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black950,
      body: Column(
        children: [
          Container(
            height: 100,
          ),
          Image.asset(
            AppImages.imgEndGame,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              gradientButton(
                borderRadius: 8,
                width: 140.w,
                onTap: () {
                  // Get.offAllNamed(RouteName.home);
                  Get.offNamedUntil(RouteName.home, (route) => false);
                },
                height: 42.h,
                gradient: const LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: [
                    AppColors.orange,
                    AppColors.orange,
                  ],
                ),
                child: Center(
                  child: Text(
                    "Chơi lại",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 24.0,
              ),
              gradientButton(
                borderRadius: 8,
                width: 140.w,
                onTap: () {
                  Get.back();
                  Get.offAllNamed(RouteName.home);
                  // Get.offNamedUntil(RouteName.home, (route) => false);
                  // Get.offAllNamed(RouteName.home);
                },
                height: 42.h,
                child: Center(
                  child: Text(
                    "Về trang chủ",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
