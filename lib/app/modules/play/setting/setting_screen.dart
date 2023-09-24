import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(),
            space(h: 14.h),
            _buildTitle(),
            Expanded(
              child: ListView(
                padding: EdgeInsets.only(bottom: 50.h),
                children: [
                  _buildGuideUnlock(),
                  space(h: 40.h),
                  _buildButtonCustomCards(),
                  space(h: 40.h),
                  _buildButtonTermsAndPolicy(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButtonTermsAndPolicy() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 348.w,
        height: 168.h,
        decoration: BoxDecoration(
          color: AppColors.whiteSmoke,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Column(
          children: [
            Expanded(
              child: _buildButtonTermsOfUse(),
            ),
            Expanded(
              child: _buildButtonPolicy(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonTermsOfUse() {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50.r),
        topRight: Radius.circular(50.r),
      ),
      child: InkWell(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50.r),
          topRight: Radius.circular(50.r),
        ),
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            children: [
              Image.asset(
                AppImages.imgTermsOfUse,
                width: 54.w,
                height: 56.h,
              ),
              space(w: 10.w),
              Text(
                "Terms of use",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonPolicy() {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(50.r),
        bottomRight: Radius.circular(50.r),
      ),
      child: InkWell(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
        onTap: () {},
        child: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Row(
            children: [
              Image.asset(
                AppImages.imgPolicy,
                width: 54.w,
                height: 56.h,
              ),
              space(w: 10.w),
              Text(
                "Privacy policy",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonCustomCards() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 348.w,
        height: 75.h,
        decoration: BoxDecoration(
          color: AppColors.whiteSmoke,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Material(
          color: AppColors.transparent,
          borderRadius: BorderRadius.circular(50.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(50.r),
            onTap: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 22.w),
              child: Row(
                children: [
                  Image.asset(
                    AppImages.imgCustomCards,
                    width: 54.w,
                    height: 56.h,
                  ),
                  space(w: 10.w),
                  Text(
                    "Custom cards",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 30.w,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGuideUnlock() {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 348.w,
        height: 294.h,
        decoration: BoxDecoration(
          color: AppColors.whiteSmoke,
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: Column(
          children: [
            Expanded(
              child: _buildGuideContent(),
            ),
            _buildButtonSeeUnlocks(),
          ],
        ),
      ),
    );
  }

  Widget _buildGuideContent() {
    return Row(
      children: [
        Image.asset(
          AppImages.imgLogoMini,
          height: 120.h,
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "YOU'RE A FREE USER",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                space(h: 16.h),
                Text(
                  "You’re missing out a lot, don’t hesitate to unlock everything",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400,
                    color: AppColors.black,
                  ),
                )
              ],
            ),
          ),
        ),
        space(w: 11.w),
      ],
    );
  }

  Widget _buildButtonSeeUnlocks() {
    return Container(
      width: double.infinity,
      height: 72.h,
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50.r),
          bottomRight: Radius.circular(50.r),
        ),
        child: InkWell(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.r),
            bottomRight: Radius.circular(50.r),
          ),
          onTap: () {},
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "SEE UNLOCKS",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Setting",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }
}
