import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: contentWithBackgroundPattern(
        child: Column(
          children: [
            buildTopBar(title: "Ngôn ngữ"),
            space(h: 40.h),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 159.w / 50.h,
                  mainAxisSpacing: 12.w,
                  crossAxisSpacing: 24.h,
                ),
                itemBuilder: (context, index) {
                  return _buildItemLanguage();
                },
                itemCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemLanguage() {
    return Container(
      width: 159.w,
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: AppColors.sunsetOrange,
          borderRadius: BorderRadius.circular(10.r)),
      child: Row(
        children: [
          Image.asset(
            AppImages.flagVn,
            width: 28.ic,
            height: 28.ic,
            fit: BoxFit.fill,
          ),
          space(w: 10.w),
          Expanded(
              child: Text(
            "Tiếng việt",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
          ))
        ],
      ),
    );
  }
}
