import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTopicScreen extends StatelessWidget {
  const SelectTopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black900,
      body: Column(
        children: [
          buildTopBar(title: "Lật thẻ bài"),
          space(h: 12.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Center(
                      child: Text(
                        "CHỌN CHỦ ĐỀ",
                        style: AppTextStyle.textStyleCommon.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.yellowOrange,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                _buildRowRules(),
              ],
            ),
          ),
          space(h: 20.h),
          _buildButtonStartup(),
          space(h: 20.h),
          _buildButton18Plus(),
          space(h: 20.h),
          Expanded(
            child: Image.asset(
              AppImages.imgTruthOrDareV2,
            ),
          ),
          space(h: 20.h),
        ],
      ),
    );
  }

  Widget _buildButtonStartup() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: gradientButton(
        height: 58.h,
        onTap: () {},
        child: Center(
          child: Text(
            "Khởi động",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton18Plus() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: gradientButton(
        height: 58.h,
        onTap: () {},
        child: Center(
          child: Text(
            "Mười tám cộng",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 18.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowRules() {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {
          showRulesFlipCard();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Luật chơi",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
            space(w: 6.w),
            Icon(
              Icons.info,
              size: 18.ic,
              color: AppColors.blue,
            )
          ],
        ),
      ),
    );
  }
}
