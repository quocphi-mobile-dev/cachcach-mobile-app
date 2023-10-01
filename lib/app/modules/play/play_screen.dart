import 'package:cachcach/app/modules/play/controller/play_controller.dart';
import 'package:cachcach/app/modules/play/widgets/slogan.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  int currentPageIndex = 0;
  final controller = Get.put(PlayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(bottom: 20.h),
          children: [
            space(h: 20.h),
            const Slogan(),
            space(h: 20.h),
            _widgetGroupCouple(),
            space(h: 20.h),
            divider(color: AppColors.cavernPink, indent: 16.w, endIndent: 16.w),
            space(h: 10.h),
            _widgetGroupFriends(),
          ],
        ),
      ),
    );
  }

  Widget _widgetGroupCouple() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cặp đôi",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 34.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
          space(h: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(
                  image: AppImages.imgTruthOrDare,
                  label: "Truth or Dare",
                  onTap: () {
                    controller.playMode = PlayMode.couple;
                    Get.toNamed(RouteName.selectMode);
                  }),
              _buildItem(
                  image: AppImages.imgBeerFlipCard,
                  label: "Lật thẻ bài",
                  onTap: () {
                    controller.playMode = PlayMode.couple;
                    Get.toNamed(RouteName.flipTheCard);
                  }),
            ],
          )
        ],
      ),
    );
  }

  Widget _widgetGroupFriends() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nhóm bạn",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 34.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
          space(h: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(
                  image: AppImages.imgFriends,
                  label: "Truth or Dare",
                  onTap: () {}),
              _buildItem(
                  image: AppImages.imgChewing,
                  label: "Chewing",
                  onTap: () {}),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildItem({
    required String image,
    required String label,
    VoidCallback? onTap,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 157.w,
          height: 117.h,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  width: 120.w,
                ),
              ),
              Material(
                color: AppColors.transparent,
                borderRadius: BorderRadius.circular(24),
                child: InkWell(
                  borderRadius: BorderRadius.circular(24),
                  onTap: onTap,
                  child: const SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              )
            ],
          ),
        ),
        space(h: 6.h),
        Text(
          label,
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: AppColors.white,
          ),
        )
      ],
    );
  }
}
