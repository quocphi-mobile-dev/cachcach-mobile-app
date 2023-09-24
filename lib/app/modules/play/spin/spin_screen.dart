import 'dart:math';

import 'package:cachcach/app/modules/play/spin/controller/spin_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SpinScreen extends StatefulWidget {
  const SpinScreen({super.key});

  @override
  State<SpinScreen> createState() => _SpinScreenState();
}

class _SpinScreenState extends State<SpinScreen>
    with SingleTickerProviderStateMixin {
  final controller = Get.put(SpinController());

  @override
  void initState() {
    super.initState();
    controller.initAnimation(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(),
            _buildTitle(),
            Expanded(child: _buildSpin()),
          ],
        ),
      ),
    );
  }

  Widget _buildSpin() {
    return Obx(
      () => Center(
        child: CircleList(
          childrenPadding: 0,
          initialAngle: -90 * pi / 180,
          outerRadius: 250.w,
          origin: Offset(-125.w / 2, 0),
          // outerCircleColor: AppColors.blue,
          rotateMode: RotateMode.stopRotate,
          centerWidget: _buildButtonSpin(),
          children: List.generate(
            controller.listPlayer.length,
            (index) {
              PlayerInfo playerInfo = controller.listPlayer[index];
              return _buildItemSpin(playerInfo);
            },
          ),
        ),
      ),
    );
  }

  Widget _buildButtonSpin() {
    return GestureDetector(
      onTap: () {
        controller.startSpinning();
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(30.w),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
            ),
          ),
          AnimatedBuilder(
            animation: controller.animationController,
            builder: (_, child) {
              return Transform.rotate(
                angle: controller.animation.value,
                child: Container(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppImages.imgSpinArrow,
                    width: 75.w,
                    height: 75.w,
                  ),
                ),
              );
            },
          ),
          Obx(
            () => controller.isSpinning.value
                ? Container()
                : Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppImages.imgSpin,
                          width: 90.w,
                          height: 90.w,
                        ),
                        Text(
                          "CLICK HERE",
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black,
                          ),
                        )
                      ],
                    ),
                  ),
          ),
          Obx(
            () => controller.isSpinning.value
                ? Container()
                : Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(left: 120.w, top: 60.h),
                      child: Image.asset(
                        AppImages.imgCursor,
                        width: 75.w,
                        height: 75.w,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildItemSpin(PlayerInfo playerInfo) {
    return Transform.scale(
      scaleX: 0.8,
      scaleY: 0.8,
      child: Container(
        width: 100.w,
        height: 135.h,
        decoration: BoxDecoration(
            color: AppColors.crusta, borderRadius: BorderRadius.circular(20.r)),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              AppImages.imgPlayerMale1,
              width: 80.w,
              height: 80.h,
            ),
            space(h: 12.h),
            Text(
              playerInfo.name,
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Spin the wheel",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }
}
