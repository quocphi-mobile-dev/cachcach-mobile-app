import 'dart:math';

import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/constant.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(onBack: () {
              Get.until((route) => route.settings.name == RouteName.spin);
            }),
            _buildLabel(),
            divider(
              color: AppColors.cavernPink,
              indent: 64.w,
              endIndent: 64.w,
            ),
            _buildPlayerName(),
            space(h: 50.h),
            Expanded(child: _buildContent()),
            space(h: 50.h),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      padding: EdgeInsets.all(12.w),
      margin: EdgeInsets.symmetric(horizontal: 50.w),
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          Text(
            content[Random().nextInt(content.length)],
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.black,
            ),
          ),
        ],
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
