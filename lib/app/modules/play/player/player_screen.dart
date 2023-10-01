import 'package:cachcach/app/modules/play/controller/play_controller.dart';
import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({super.key});

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  final controller = Get.put(PlayerController());
  final PlayController playController = Get.find();

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
            space(h: 10.h),
            Expanded(
              child: Obx(
                () => ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 50.h),
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        PlayerInfo playerInfo = controller.listPlayer[index];

                        return _buildItemPlayer(playerInfo);
                      },
                      separatorBuilder: (context, index) {
                        return space(h: 38.h);
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
      width: double.infinity,
      height: 58.h,
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(14.r),
        child: InkWell(
          borderRadius: BorderRadius.circular(14.r),
          onTap: () {
            FocusScope.of(context).unfocus();
            Get.toNamed(RouteName.guidePlay);
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Start the  game",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItemPlayer(PlayerInfo playerInfo) {
    return Container(
      width: double.infinity,
      height: 72.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        children: [
          Obx(
            () => GestureDetector(
              onTap: () {
                playerInfo.gender.value = Gender.female;
              },
              child: Container(
                width: 36.w,
                height: 36.w,
                padding: EdgeInsets.all(8.w),
                decoration: BoxDecoration(
                  color: playerInfo.gender.value == Gender.female
                      ? AppColors.mabel
                      : AppColors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  AppImages.imgFemale,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
            ),
          ),
          space(w: 8.w),
          Obx(
            () => GestureDetector(
              onTap: () {
                playerInfo.gender.value = Gender.male;
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
                  AppImages.imgMale,
                  width: 24.w,
                  height: 24.w,
                ),
              ),
            ),
          ),
          space(w: 16.w),
          Expanded(
            child: TextField(
              controller: playerInfo.textEditingController,
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Input Name",
                hintStyle: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.grey350,
                ),
              ),
            ),
          ),
          Icon(
            Icons.close,
            color: AppColors.white,
            size: 40.w,
          ),
        ],
      ),
    );
  }

  Widget _buildAddPlayer() {
    return Container(
      width: double.infinity,
      height: 72.h,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: AppColors.crusta,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AppImages.imgPlus,
              width: 50.w,
              height: 50.w,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Add player",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        "Players: ",
        style: AppTextStyle.textStyleCommon.copyWith(
          fontSize: 34.sp,
          fontWeight: FontWeight.w600,
          color: AppColors.black,
        ),
      ),
    );
  }
}