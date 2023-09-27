import 'dart:math';

import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/spin/controller/spin_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/custom_arc.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
  final PlayerController playerController = Get.find();

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
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(onBack: () {
              controller.checkResult();
            }),
            _buildTitle(),
            Expanded(child: _buildWheel()),
          ],
        ),
      ),
    );
  }

  Widget _buildWheel() {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 500.h,
            child: Stack(
              children: [
                CustomPaint(
                  painter: CustomArc(
                      context: context,
                      color: AppColors.crusta.withOpacity(0.5)),
                  size: Size(double.infinity, 500.h),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.h),
                  child: CarouselSlider(
                    carouselController: controller.carouselController,
                    items: List.generate(
                      playerController.listPlayer.length,
                      (index) {
                        PlayerInfo playerInfo =
                            playerController.listPlayer[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 120.w,
                              height: 120.w,
                              decoration: const BoxDecoration(
                                color: AppColors.crusta,
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(AppImages.imgPlayerMale1),
                            ),
                            space(h: 10.h),
                            Text(
                              playerInfo.name,
                              style: AppTextStyle.textStyleCommon.copyWith(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    options: CarouselOptions(
                      height: 400.h,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      viewportFraction: 0.4,
                      aspectRatio: 1.0,
                      scrollPhysics: const NeverScrollableScrollPhysics(),
                      onPageChanged: (index, _) {
                        controller.selectedIndex = index;
                      }
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Transform.rotate(
                    angle: 3.14,
                    child: Image.asset(
                      AppImages.imgSpinArrow,
                      width: 75.w,
                      height: 75.w,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () {
              controller.startRandom();
            },
            child: Container(
              width: 120.w,
              height: 120.h,
              margin: EdgeInsets.only(bottom: 70.h),
              decoration: const BoxDecoration(
                  color: AppColors.white, shape: BoxShape.circle),
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0)
                    .animate(controller.animationController),
                child: Icon(
                  Icons.sync,
                  size: 40.w,
                ),
              ),
            ),
          ),
        )
      ],
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
