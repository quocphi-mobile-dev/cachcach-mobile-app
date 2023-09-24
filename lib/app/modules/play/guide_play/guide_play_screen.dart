import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GuidePlayScreen extends StatelessWidget {
  const GuidePlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(),
            _buildLogo(),
            space(h: 24.h),
            Expanded(
              child: _buildGuidePlay(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        AppImages.imgLogoMini,
        width: 172.w,
        height: 126.h,
      ),
    );
  }

  Widget _buildGuidePlay() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 38.w).copyWith(
        bottom: 50.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        children: [
          space(h: 18.h),
          Expanded(
            child: ListView(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Guide Play",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
                space(h: 6.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 34.w),
                  child: Text(
                    ">>\n>>\n>>\n>>\n>>\n>>\n>>\n>>",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                )
              ],
            ),
          ),
          space(h: 10.h),
          _buildButtonLetsGo(),
          space(h: 18.h),
        ],
      ),
    );
  }

  Widget _buildButtonLetsGo() {
    return Container(
      width: 208.w,
      height: 58.h,
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
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(14.r),
          onTap: () {
            Get.toNamed(RouteName.spin);
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Lets go!",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
