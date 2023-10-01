import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectModeCard extends StatefulWidget {
  const SelectModeCard({
    super.key,
    required this.title,
    required this.totalCards,
    required this.image,
    required this.label,
    this.isLock = true,
    required this.guideText,
    this.onPlay,
    this.onUnlock,
    required this.price,
  });

  final String title;
  final int totalCards;
  final String image;
  final String label;
  final bool isLock;
  final String guideText;
  final VoidCallback? onPlay;
  final VoidCallback? onUnlock;
  final int price;

  @override
  State<SelectModeCard> createState() => _SelectModeCardState();
}

class _SelectModeCardState extends State<SelectModeCard> {
  RxBool isEnable = false.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 342.w,
      height: 512.h,
      child: Stack(
        children: [
          _buildContent(),
          _buildImage(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Image.asset(
      widget.image,
      width: 140.ic,
      height: 140.ic,
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.only(top: 90.h, bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.lightSlateBlue,
        borderRadius: BorderRadius.circular(24.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(4, 8), // Shadow position
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(bottom: 20.h),
              children: [
                space(h: 40.h),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.label,
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                      space(w: 10.w),
                      _buildTotalCard(),
                    ],
                  ),
                ),
                space(h: 12.h),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(
                    widget.guideText,
                    textAlign: TextAlign.justify,
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white,
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
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.r),
        color: AppColors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => SizedBox(
              width: 40.w,
              height: 20.h,
              child: CupertinoSwitch(
                value: isEnable.value,
                thumbColor: AppColors.crusta,
                onChanged: (bool value) {
                  isEnable.value = value;
                },
              ),
            ),
          ),
          space(w: 24.w),
          Expanded(
            child: Text(
              "Add with my dares",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.bgColor,
              ),
            ),
          ),
          space(w: 10.w),
          Icon(
            Icons.chevron_right,
            size: 32.ic,
            color: AppColors.crusta,
          ),
        ],
      ),
    );
  }

  Widget _buildButtonPlay() {
    if (widget.isLock) {
      return gradientButton(
        width: double.infinity,
        height: 60.h,
        child: Material(
          color: AppColors.transparent,
          borderRadius: BorderRadius.circular(14.r),
          child: InkWell(
            borderRadius: BorderRadius.circular(14.r),
            onTap: widget.onUnlock,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text.rich(
                      TextSpan(children: [
                        TextSpan(
                          text: "Mở khoá chỉ ",
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                          ),
                        ),
                        TextSpan(
                          text: currencyFormat.format(widget.price),
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.white,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ]),
                    ),
                  ),
                  space(w: 10.w),
                  Icon(
                    Icons.play_circle_outlined,
                    size: 40.ic,
                    color: AppColors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return gradientButton(
      width: double.infinity,
      height: 60.h,
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(14.r),
          onTap: widget.onPlay,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Bắt đầu chơi",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Icon(
                  Icons.play_circle_outlined,
                  size: 40.ic,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTotalCard() {
    return Text(
      "${widget.totalCards ?? ""} Cards",
      style: AppTextStyle.textStyleCommon.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
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
