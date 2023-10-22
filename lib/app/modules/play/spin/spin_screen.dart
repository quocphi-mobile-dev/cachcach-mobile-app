import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/spin/controller/spin_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/custom_arc.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
  void dispose() {
    controller.releaseAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTopBar(onBack: () {
            controller.checkResult();
          }, title: "Vòng quay"),
          Expanded(child: _buildWheel()),
        ],
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
                    color: AppColors.blueGem,
                  ),
                  size: Size(double.infinity, 500.h),
                ),
                Container(
                  margin: EdgeInsets.only(top: 100.h),
                  child: CarouselSlider.builder(
                    carouselController: controller.carouselController,
                    options: CarouselOptions(
                        height: 400.h,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        viewportFraction: 0.4,
                        aspectRatio: 1.0,
                        scrollPhysics: const NeverScrollableScrollPhysics(),
                        onPageChanged: (index, _) {
                          controller.selectedIndex = index;
                        }),
                    itemCount: playerController.listPlayer.length,
                    itemBuilder:
                        (BuildContext context, int index, int realIndex) {
                      return _buildItemSpin(index, realIndex);
                    },
                  ),
                ),
                _buildSpinArrow(),
              ],
            ),
          ),
        ),
        _buildButtonSpin(),
      ],
    );
  }

  Widget _buildItemSpin(int index, int realIndex) {
    PlayerInfo playerInfo = playerController.listPlayer[index];
    playerInfo.heroWidgetId = realIndex;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Hero(
          tag: "$realIndex",
          child: Container(
            width: 140.ic,
            height: 140.ic,
            decoration: const BoxDecoration(
              color: AppColors.orange,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              playerInfo.gender.value == Gender.male
                  ? AppImages.imgPlayerMale1
                  : AppImages.imgPlayerFemale1,
            ),
          ),
        ),
        space(h: 10.h),
        Text(
          playerInfo.name,
          style: AppTextStyle.textStyleCommon.copyWith(
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildSpinArrow() {
    return Align(
      alignment: Alignment.topCenter,
      child: Transform.rotate(
        angle: 3.14,
        child: Image.asset(
          AppImages.imgSpinArrow,
          width: 75.w,
          height: 75.w,
        ),
      ),
    );
  }

  Widget _buildButtonSpin() {
    return Align(
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
          color: AppColors.white,
        ),
      ),
    );
  }
}
