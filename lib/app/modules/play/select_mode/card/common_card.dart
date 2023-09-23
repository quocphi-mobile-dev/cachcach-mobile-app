import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonCard extends StatelessWidget {
  const CommonCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          _background(),
          _buildContent(),
          _buildTitle(),
          _buildTotalCard(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.w).copyWith(bottom: 50.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 20.h),
              children: [
                Image.asset(
                  AppImages.imgClassic,
                  width: 160.w,
                  height: 160.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Soft",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
                space(h: 12.h),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _buildButtonAddWithMyDare(),
          space(h: 18.h),
          _buildButtonPlay(),
        ],
      ),
    );
  }

  Widget _buildButtonAddWithMyDare() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColors.bgColor,
      ),
    );
  }

  Widget _buildButtonPlay() {
    return Container(
      width: double.infinity,
      height: 50.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            AppColors.sunshade,
            AppColors.coral,
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      width: 120.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: AppColors.sunshade,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(48.r),
        ),
      ),
    );
  }

  Widget _buildTotalCard() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 120.w,
        height: 40.h,
        decoration: BoxDecoration(
          color: AppColors.sunshade,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
      ),
    );
  }

  Widget _background() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.sunshade,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(24.r),
        ),
      ),
    );
  }
}
