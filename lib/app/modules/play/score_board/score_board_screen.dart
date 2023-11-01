import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/select_mode/controller/select_mode_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ScoreBoardScreen extends StatefulWidget {
  const ScoreBoardScreen({super.key});

  @override
  State<ScoreBoardScreen> createState() => _ScoreBoardScreenState();
}

class _ScoreBoardScreenState extends State<ScoreBoardScreen> {
  final PlayerController playerController = Get.find();
  final SelectModeController selectModeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            buildTopBar(
              onBack: () {
                Get.until(
                    (route) => route.settings.name == RouteName.selectMode);
              },
              title: "Tổng kết",
            ),
            space(h: 12.h),
            Expanded(
              child: _buildScoreBoard(),
            ),
            space(h: 50.h),
            _buildButtonPlayAgain(),
            space(h: 20.h),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonPlayAgain() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: gradientButton(
        height: 58.h,
        onTap: () {
          playerController.reset();
          selectModeController.reset();
          Get.until((route) => route.settings.name == RouteName.spin);
        },
        child: Center(
          child: Text(
            "Chơi lại",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScoreBoard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Stack(
        children: [
          _buildContent(),
          _buildImage(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      margin: EdgeInsets.only(top: 90.h, bottom: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.ginFizz,
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
        children: [
          space(h: 40.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  selectModeController.categorySelected?.name ?? "",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey,
                  ),
                ),
              ),
              space(w: 10.w),
              Text(
                "10 Cards",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          divider(color: AppColors.crusta),
          space(h: 10.h),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildScoreBoardHeader(),
                  space(h: 4.h),
                  divider(color: AppColors.grey),
                  space(h: 4.h),
                  Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.only(bottom: 50.h),
                      itemBuilder: (BuildContext context, int index) {
                        PlayerInfo playerInfo =
                            playerController.getListPlayerSortByPoint()[index];
                        return _buildPlayerScore(playerInfo);
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return space(h: 6.h);
                      },
                      itemCount:
                          playerController.getListPlayerSortByPoint().length,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        AppImages.imgClassic,
        width: 140.ic,
        height: 140.ic,
      ),
    );
  }

  Widget _buildPlayerScore(PlayerInfo playerInfo) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text(
            playerInfo.name,
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.crusta,
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "${playerInfo.darePoint}",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.crusta,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              "${playerInfo.truthPoint}",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.crusta,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildScoreBoardHeader() {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            child: Text(
              "Player",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.grey,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.imgQuestionDare,
                  width: 22.ic,
                  height: 22.ic,
                ),
                space(w: 4.w),
                Text(
                  "Dare",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.imgQuestionTruth,
                  width: 22.ic,
                  height: 22.ic,
                ),
                space(w: 4.w),
                Text(
                  "Truth",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
