import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScoreBoardScreen extends StatelessWidget {
  const ScoreBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            buildTopBar(),
            _buildPlayerWin(),
            space(h: 12.h),
            _buildScoreBoard(),
          ],
        ),
      ),
    );
  }

  Widget _buildScoreBoard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      width: 340.w,
      height: 398.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Column(
        children: [
          space(h: 8.h),
          Image.asset(
            AppImages.imgCup,
            width: 70.w,
            height: 60.h,
          ),
          Text(
            "Scoreboard",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 28.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
          _buildScoreBoardHeader(),
          Expanded(
            child: _buildScoreBoardValue(),
          )
        ],
      ),
    );
  }

  Widget _buildScoreBoardValue() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(bottom: 10.h),
      child: RawScrollbar(
        thumbColor: AppColors.deepSkyBlue,
        trackColor: AppColors.ming,
        thumbVisibility: true,
        trackVisibility: true,
        thickness: 11.w,
        radius: Radius.circular(20.r),
        trackRadius: Radius.circular(20.r),
        padding: EdgeInsets.only(bottom: 20.h),
        child: ListView.separated(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 50.h),
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Player $index:",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "5",
                      style: AppTextStyle.textStyleCommon.copyWith(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "15",
                      style: AppTextStyle.textStyleCommon.copyWith(
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return space(h: 20.h);
          },
          itemCount: 10,
        ),
      ),
    );
  }

  Widget _buildScoreBoardHeader() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Truth",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 19.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "Dare",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 19.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPlayerWin() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              "Players 1:",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 34.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black.withOpacity(0.5),
              ),
            ),
          ),
          space(w: 20.w),
          Image.asset(
            AppImages.imgCup,
            width: 70.w,
            height: 60.h,
            opacity: const AlwaysStoppedAnimation(0.5),
          )
        ],
      ),
    );
  }
}
