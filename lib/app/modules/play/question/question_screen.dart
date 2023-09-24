import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(),
            _buildLabel(),
            divider(
              color: AppColors.cavernPink,
              indent: 64.w,
              endIndent: 64.w,
            ),
            _buildPlayerName(),
            Expanded(child: _buildTruthOrDare())
          ],
        ),
      ),
    );
  }

  Widget _buildTruthOrDare() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildButtonTruth(),
          space(h: 12.h),
          divider(color: AppColors.cavernPink, indent: 100.w, endIndent: 100.w),
          space(h: 12.h),
          Container(
            width: 110.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: AppColors.crusta,
                borderRadius: BorderRadius.circular(50.r)),
            alignment: Alignment.center,
            child: Text(
              "OF",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 30.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          space(h: 12.h),
          divider(color: AppColors.cavernPink, indent: 100.w, endIndent: 100.w),
          space(h: 12.h),
          _buildButtonDare(),
        ],
      ),
    );
  }

  Widget _buildButtonTruth() {
    return Container(
      width: 150.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(20.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: () {
            Get.toNamed(RouteName.detail);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.imgTruth,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Text(
                  "Trurth",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "30/30",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonDare() {
    return Container(
      width: 150.w,
      height: 180.h,
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(20.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(20.r),
          onTap: () {
            Get.toNamed(RouteName.detail);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      AppImages.imgDare,
                      width: 100.w,
                      height: 100.w,
                    ),
                  ),
                ),
                Text(
                  "Dare",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
                Text(
                  "30/30",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLabel() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Fun",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }

  Widget _buildPlayerName() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Player 1:",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }
}
