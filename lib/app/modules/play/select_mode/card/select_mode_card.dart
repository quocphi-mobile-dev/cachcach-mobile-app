import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
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
    this.showIconMovie = true,
    required this.guideText,
    this.onPlay,
  });

  final String title;
  final int totalCards;
  final String image;
  final String label;
  final bool showIconMovie;
  final String guideText;
  final VoidCallback? onPlay;

  @override
  State<SelectModeCard> createState() => _SelectModeCardState();
}

class _SelectModeCardState extends State<SelectModeCard> {
  RxBool isEnable = false.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 512.h,
      child: Stack(
        children: [
          _background(),
          _buildContent(),
          _buildMovie(),
          _buildTitle(),
          _buildTotalCard(),
        ],
      ),
    );
  }

  Widget _buildMovie() {
    if (widget.showIconMovie) {
      return Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
        child: Image.asset(
          AppImages.imgMoviePlay,
          width: 50.w,
          height: 50.h,
        ),
      );
    }

    return const SizedBox();
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
                  widget.image,
                  width: 160.w,
                  height: 160.h,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.label,
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
                  child: Text(
                    widget.guideText,
                    textAlign: TextAlign.justify,
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => SizedBox(
              width: 40.w,
              height: 20.h,
              child: Switch(
                value: isEnable.value,
                onChanged: (bool value) {
                  isEnable.value = value;
                },
              ),
            ),
          ),
          space(w: 10.w),
          Expanded(
            child: Text(
              "Add with my dares",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          space(w: 10.w),
          Icon(
            Icons.chevron_right,
            size: 20.w,
          ),
        ],
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
                  "Play",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
                Icon(
                  Icons.play_circle_outlined,
                  size: 40.w,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      width: 90.w,
      height: 30.h,
      decoration: BoxDecoration(
        color: AppColors.sunshade,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(48.r),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      alignment: Alignment.center,
      child: Text(
        widget.title,
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }

  Widget _buildTotalCard() {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        width: 90.w,
        height: 30.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.sunshade,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(48.r),
            bottomRight: Radius.circular(24.r),
          ),
        ),
        child: Text(
          "${widget.totalCards ?? ""} CARDS",
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.black,
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
