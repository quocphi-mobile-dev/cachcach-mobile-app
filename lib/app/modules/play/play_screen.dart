import 'package:cachcach/app/modules/play/controller/play_controller.dart';
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
            Image.asset(
              AppImages.imgLogoMini,
              width: 172.w,
              height: 126.h,
            ),
            space(h: 20.h),
            _widgetGroupCouple(),
            space(h: 20.h),
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
            "Couple",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 34.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
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
                  image: AppImages.imgTruthOrDare,
                  label: "Chewing",
                  onTap: () {}),
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
            "Friends",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 34.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          space(h: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildItem(
                  image: AppImages.imgTruthOrDare,
                  label: "Truth or Dare",
                  onTap: () {}),
              _buildItem(
                  image: AppImages.imgTruthOrDare,
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
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(24),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: Container(
          width: 162.w,
          height: 162.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image),
              space(h: 20.h),
              Text(
                label,
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
