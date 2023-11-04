import 'package:cachcach/app/modules/play/question/model/question_type.dart';
import 'package:cachcach/app/modules/play/select_mode/controller/select_mode_controller.dart';
import 'package:cachcach/app/modules/play/spin/controller/spin_controller.dart';
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

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  final SpinController spinController = Get.find();
  final SelectModeController selectModeController = Get.find();
  QuestionType? questionType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: contentWithBackgroundPattern(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildTopBar(title: "Người được chọn"),
            _buildPlayer(),
            space(h: 30.h),
            Expanded(child: _buildTruthOrDare()),
            space(h: 16.h),
            _buildActions(),
            space(h: 50.h),
          ],
        ),
      ),
    );
  }

  Widget _buildActions() {
    if (questionType == null) {
      return Container(
        height: 58.h,
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        normalButton(
          width: 172.w,
          height: 58.h,
          borderRadius: 14.r,
          backgroundColor: AppColors.black,
          onTap: () {
            if (questionType == QuestionType.truth) {
              spinController.playerSelected.truthGiveUpPoint += 1;
            } else {
              spinController.playerSelected.dareGiveUpPoint += 1;
            }
            if (selectModeController.listQuestionCollectionsRandom.isEmpty) {
              Get.offNamed(RouteName.scoreBoard);
            } else {
              Get.back();
            }
          },
          child: Center(
            child: Text(
              "Bỏ cuộc",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ),
        space(w: 12.w),
        gradientButton(
          width: 172.w,
          height: 58.h,
          borderRadius: 14.r,
          onTap: () {
            if (questionType == QuestionType.truth) {
              spinController.playerSelected.truthPoint += 1;
            } else {
              spinController.playerSelected.darePoint += 1;
            }
            if (selectModeController.listQuestionCollectionsRandom.isEmpty) {
              Get.offNamed(RouteName.scoreBoard);
            } else {
              Get.back();
            }
          },
          child: Center(
            child: Text(
              "Hoàn thành",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCardTruth() {
    if (selectModeController.listQuestionCollectionsRandom.isEmpty) {
      return Container();
    }

    return Container(
      width: 172.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              questionType = QuestionType.truth;
            });
          },
          borderRadius: BorderRadius.circular(16.r),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.imgQuestionTruth,
                  width: 120.ic,
                  height: 120.ic,
                  fit: BoxFit.fitWidth,
                ),
                space(h: 36.h),
                Text(
                  "Truth",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 44.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardDare() {
    if (selectModeController.listQuestionCollectionsRandom.isEmpty) {
      return Container();
    }

    return Container(
      width: 172.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(16.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(16.r),
          onTap: () {
            setState(() {
              questionType = QuestionType.dare;
            });
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  AppImages.imgQuestionDare,
                  width: 120.ic,
                  height: 120.ic,
                  fit: BoxFit.fitWidth,
                ),
                space(h: 36.h),
                Text(
                  "Dare",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 44.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTruthOrDare() {
    Widget widget = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCardTruth(),
        space(w: 12.w),
        _buildCardDare(),
      ],
    );

    if (questionType == QuestionType.truth) {
      widget = _buildDetailQuestionTruth();
    } else if (questionType == QuestionType.dare) {
      widget = _buildDetailQuestionDare();
    }

    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 500),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: widget,
    );
  }

  Widget _buildDetailQuestionTruth() {
    return Container(
      width: 355.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColors.whiteSmoke,
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppImages.imgQuestionTruth,
                width: 42.ic,
                height: 42.ic,
              ),
              space(w: 20.w),
              Expanded(
                child: Text(
                  "Truth",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              )
            ],
          ),
          space(h: 12.h),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: spinController.playerSelected.name,
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.purpleHeart,
                          ),
                        ),
                        TextSpan(
                          text: ", ",
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                        TextSpan(
                          text: selectModeController.getRandomTruth(),
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.black,
                          ),
                        ),
                      ],
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

  Widget _buildDetailQuestionDare() {
    return Container(
      width: 355.w,
      height: 300.h,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(16.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                AppImages.imgQuestionDare,
                width: 42.ic,
                height: 42.ic,
              ),
              space(w: 20.w),
              Expanded(
                child: Text(
                  "Dare",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                  ),
                ),
              )
            ],
          ),
          space(h: 12.h),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: spinController.playerSelected.name,
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.purpleHeart,
                          ),
                        ),
                        TextSpan(
                          text: ", ",
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                        TextSpan(
                          text: selectModeController.getRandomDare(),
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ],
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

  Widget _buildLabel() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Người được chọn",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
      ),
    );
  }

  Widget _buildPlayer() {
    return Hero(
      tag: "${spinController.playerSelected.heroWidgetId}",
      child: Container(
        width: 160.w,
        height: 180.h,
        decoration: BoxDecoration(
            color: AppColors.orange, borderRadius: BorderRadius.circular(20.r)),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image.asset(
                spinController.playerSelected.gender.value == Gender.male
                    ? AppImages.imgPlayerMale1
                    : AppImages.imgPlayerFemale1,
                width: 120.ic,
                height: 120.ic,
                fit: BoxFit.fitWidth,
              ),
            ),
            space(h: 12.h),
            Text(
              spinController.playerSelected.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
