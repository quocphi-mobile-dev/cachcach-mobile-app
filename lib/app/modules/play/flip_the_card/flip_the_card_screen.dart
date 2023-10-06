import 'dart:math';

import 'package:cachcach/app/modules/play/flip_the_card/controller/flip_the_card_controller.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FlipTheCardScreen extends StatefulWidget {
  const FlipTheCardScreen({super.key});

  @override
  State<FlipTheCardScreen> createState() => _FlipTheCardScreenState();
}

class _FlipTheCardScreenState extends State<FlipTheCardScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController control;

  late Animation<double> rot;

  late Animation<double> trasl;

  FlipCardController flipCardController = FlipCardController();
  FlipTheCardController controller = Get.put(FlipTheCardController());

  @override
  void initState() {
    super.initState();

    control = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    rot = Tween<double>(
      begin: 0,
      end: 0.2 * pi,
    ).animate(control);

    trasl = Tween<double>(
      begin: 0,
      end: Get.height,
    ).animate(control);

    control.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.canDraw = true;
        flipCardController.toggleCardWithoutAnimation();
        control.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            buildTopBar(title: "Lật thẻ bài"),
            Expanded(
              child: Stack(
                children: [
                  _buildStackCard(
                    degree: 15,
                    compareCardLength: 3,
                  ),
                  _buildStackCard(
                    degree: 8,
                    compareCardLength: 2,
                  ),
                  _buildStackCard(
                    degree: 0,
                    compareCardLength: 1,
                  ),
                  _buildFlipCard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStackCard(
      {required double degree, required int compareCardLength}) {
    return Obx(
      () {
        if (controller.listCardRemaining.length < compareCardLength) {
          return Container();
        }

        return Align(
          alignment: Alignment.center,
          child: Transform.rotate(
            alignment: Alignment.center,
            angle: degree * pi / 180,
            child: SizedBox(
              width: 239.w,
              height: 367.h,
              child: Image.asset(
                AppImages.imgFlipCard,
                width: 239.w,
                height: 367.h,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildFlipCard({EdgeInsets? margin}) {
    return AnimatedBuilder(
      animation: control,
      builder: (BuildContext context, Widget? child) {
        return Align(
          alignment: Alignment.center,
          child: Container(
            margin: margin,
            child: Transform.translate(
              offset: Offset(0, trasl.value),
              child: Transform(
                transform: Matrix4.rotationZ(rot.value),
                child: InkWell(
                  splashColor: AppColors.transparent,
                  highlightColor: AppColors.transparent,
                  onTap: () {
                    if (flipCardController.state?.isFront == true) {
                      if (controller.canDraw) {
                        controller.canDraw = false;
                        controller.getCard();
                        flipCardController.toggleCard();
                      }
                    } else {
                      if (controller.listCardRemaining.isEmpty) {
                        return;
                      }

                      control.forward();
                    }
                  },
                  child: IgnorePointer(
                    child: FlipCard(
                      key: Key(1.toString()),
                      controller: flipCardController,
                      speed: 300,
                      front: _buildCardFront(),
                      back: _buildCardBack(),
                      flipOnTouch: false,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardBack() {
    return Container(
      width: 239.w,
      height: 367.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(
          color: AppColors.atomicTangerine,
          width: 2.ic,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppImages.imgLogoMini,
                width: 80.ic,
                height: 80.ic,
              ),
              Text(
                "CẠCH CẠCH",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.alizarin,
                ),
              ),
            ],
          ),
          divider(
            color: AppColors.alizarin,
            indent: 12.w,
            endIndent: 12.w,
          ),
          space(h: 6.h),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Obx(
                    () => Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Text(
                        controller.cardContent.value,
                        style: AppTextStyle.textStyleCommon.copyWith(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          space(h: 6.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.w),
            alignment: Alignment.centerRight,
            child: Obx(
              () => Text(
                "${controller.getCardNumber()}/${controller.getTotal()}",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkGray,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCardFront() {
    return SizedBox(
      width: 239.w,
      height: 367.h,
      child: Image.asset(
        AppImages.imgFlipCard,
        width: 239.w,
        height: 367.h,
      ),
    );
  }
}
