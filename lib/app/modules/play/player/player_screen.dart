import 'package:cachcach/app/modules/play/controller/play_controller.dart';
import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/select_mode/controller/select_mode_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final controller = Get.put(PlayerController());
  final SelectModeController selectModeController = Get.find();
  final PlayController playController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildTopBar(title: "Thật hay thách"),
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20.h),
                      child: Image.asset(
                        AppImages.imgBottomPlayer,
                        width: 325.w,
                        height: 190.h,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Obx(
                    () => ListView(
                      padding: EdgeInsets.symmetric(horizontal: 16.w)
                          .copyWith(bottom: 50.h),
                      children: [
                        space(h: 10.h),
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            PlayerInfo playerInfo =
                                controller.listPlayer[index];

                            return _buildItemPlayer(playerInfo);
                          },
                          separatorBuilder: (context, index) {
                            return space(h: 10.h);
                          },
                          itemCount: controller.listPlayer.length,
                        ),
                        space(h: 38.h),
                        playController.playMode == PlayMode.couple
                            ? Container()
                            : _buildAddPlayer()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            _buildButtonStartGame(),
            space(h: 10.h),
          ],
        ),
      ),
    );
  }

  Widget _buildButtonStartGame() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: gradientButton(
        onTap: () {
          FocusScope.of(context).unfocus();
          Get.toNamed(RouteName.spin);
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: Text(
            "Bắt đầu chơi",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 17.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        height: 58.h,
        width: double.infinity,
      ),
    );
  }

  Widget _buildItemPlayer(PlayerInfo playerInfo) {
    return Slidable(
      key: ValueKey(playerInfo.hashCode),
      endActionPane: playController.playMode == PlayMode.couple
          ? null
          : ActionPane(
              motion: const ScrollMotion(),
              extentRatio: 0.3,
              children: [
                Expanded(child: Container()),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: 68.h,
                    decoration: BoxDecoration(
                      color: AppColors.crusta,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    alignment: Alignment.center,
                    child: Material(
                      borderRadius: BorderRadius.circular(16.r),
                      color: AppColors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(16.r),
                        onTap: () {
                          controller.listPlayer.remove(playerInfo);
                        },
                        child: Center(
                          child: Text(
                            "Xóa",
                            style: AppTextStyle.textStyleCommon.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
      child: Container(
        width: double.infinity,
        height: 68.h,
        padding: EdgeInsets.symmetric(horizontal: 8.w),
        decoration: BoxDecoration(
          color: AppColors.crusta,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Row(
          children: [
            Obx(
              () => Container(
                width: 52.ic,
                height: 52.ic,
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  playerInfo.gender.value == Gender.male
                      ? AppImages.imgCharacterMale
                      : AppImages.imgCharacterFemale,
                  width: 26.ic,
                  height: 26.ic,
                ),
              ),
            ),
            space(w: 8.w),
            Expanded(
              child: TextField(
                controller: playerInfo.textEditingController,
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Nhập tên",
                  hintStyle: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.gainsboro,
                  ),
                ),
              ),
            ),
            space(w: 8.w),
            Obx(
              () => GestureDetector(
                onTap: () {
                  if (playerInfo.gender.value == Gender.female) {
                    playerInfo.gender.value = Gender.male;
                  } else {
                    playerInfo.gender.value = Gender.female;
                  }
                },
                child: Container(
                  width: 36.w,
                  height: 36.w,
                  padding: EdgeInsets.all(8.w),
                  decoration: BoxDecoration(
                    color: playerInfo.gender.value == Gender.male
                        ? AppColors.capeHoney
                        : AppColors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    playerInfo.gender.value == Gender.male
                        ? AppImages.imgMale
                        : AppImages.imgFemale,
                    width: 24.w,
                    height: 24.w,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAddPlayer() {
    return Container(
      width: double.infinity,
      height: 58.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          onTap: () {
            controller.listPlayer.add(PlayerInfo());
          },
          borderRadius: BorderRadius.circular(14.r),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    alignment: Alignment.center,
                    width: 34.ic,
                    height: 34.ic,
                    decoration: const BoxDecoration(
                      color: AppColors.crusta,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      AppIcons.icPlus,
                      width: 14.ic,
                      height: 14.ic,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Thêm người chơi",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.grey,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Expanded(
          child: Text(
            "Truth or Dare",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 26.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white,
            ),
          ),
        ),
        space(w: 10.w),
        IconButton(
          onPressed: () {
            Get.dialog(_buildGuidePlay());
          },
          icon: Icon(
            Icons.info_outline,
            size: 32.ic,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildGuidePlay() {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Material(
        color: AppColors.transparent,
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
            constraints: BoxConstraints(minHeight: 400.h),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        space(h: 32.h),
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Icon(
                            Icons.info,
                            size: 56.ic,
                            color: AppColors.blue,
                          ),
                        ),
                        space(h: 20.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Luật chơi Thật hay Thách",
                            style: AppTextStyle.textStyleCommon.copyWith(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        space(h: 16.h),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20.w),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "- Bộ bài sẽ có tổng cộng N lá bài, mỗi lá có 1 Truth và 1 Dare. \n- Luật chơi là mọi người sẽ ngồi vòng tròn, sau đó bạn cần phải quay vòng quay may rủi trên APP để biết tên người thực hiện thử thách. \n- Người thực hiện  chọn “Truth” bạn sẽ phải trả lời đúng sự thật với câu hỏi được ghi trên lá bài. Còn nếu chọn “Dare”, bạn phải thực hiện theo những gì lá bài ghi.",
                            style: AppTextStyle.textStyleCommon.copyWith(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 1,
                  right: 1,
                  child: Container(
                    width: 44.ic,
                    height: 44.ic,
                    margin: EdgeInsets.only(top: 12.h, right: 12.w),
                    child: Material(
                      color: AppColors.gainsboro,
                      shape: const CircleBorder(),
                      clipBehavior: Clip.hardEdge,
                      child: IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.close,
                          size: 28.ic,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
