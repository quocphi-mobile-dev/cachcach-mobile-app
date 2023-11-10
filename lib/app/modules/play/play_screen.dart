import 'package:cachcach/app/modules/play/controller/play_controller.dart';
import 'package:cachcach/app/modules/play/widgets/slogan.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      backgroundColor: AppColors.alabaster,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            _buildTopBar(),
            space(h: 10.h),
            Expanded(
              child: _buildListItem(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListItem() {
    return Obx(
      () {
        if (controller.isLoading.value) {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }

        return ListView.separated(
          padding: EdgeInsets.only(bottom: 20.h),
          itemBuilder: (BuildContext context, int index) {
            var gameMode = controller.listGameMode[index];
            return _buildNewItem(
                title: gameMode.name ?? "",
                description: gameMode.description ?? "",
                totalPlayer: gameMode.getTotalPlayer(),
                showRules: false,
                onTap: () {
                  controller.playMode = gameMode.getPlayMode();
                  Get.toNamed(RouteName.selectMode,
                      arguments: {"id": gameMode.id});
                });
          },
          separatorBuilder: (BuildContext context, int index) {
            return space(h: 16.h);
          },
          itemCount: controller.listGameMode.length,
        );
      },
    );
  }

  Widget _buildNewItem(
      {required String title,
      required String description,
      required String totalPlayer,
      bool showRules = false,
      Function? onTap,
      Function? onRulesTap}) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(15.r),
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
            Container(
              width: 345.w,
              height: 186.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Image.asset(
                AppImages.img1,
                fit: BoxFit.fill,
              ),
            ),
            space(h: 4.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  AppImages.imgHuman,
                  width: 24.ic,
                  height: 24.ic,
                ),
                space(w: 10.w),
                Expanded(
                  child: Text(
                    title,
                    style: AppTextStyle.textStyleCommon.copyWith(
                      color: AppColors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                space(w: 10.w),
                showRules
                    ? Material(
                        child: InkWell(
                          onTap: () {
                            onRulesTap?.call();
                          },
                          child: Row(
                            children: [
                              Text(
                                "Luật chơi",
                                style: AppTextStyle.textStyleCommon.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                              space(w: 6.w),
                              Icon(
                                Icons.info,
                                size: 18.ic,
                                color: AppColors.blue,
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            space(h: 4.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.access_time_outlined,
                  color: AppColors.crusta,
                  size: 24.ic,
                ),
                space(w: 10.w),
                Expanded(
                  child: Text(
                    description,
                    style: AppTextStyle.textStyleCommon.copyWith(
                      color: AppColors.dimGray,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                space(w: 10.w),
                Row(
                  children: [
                    Text(
                      totalPlayer,
                      style: AppTextStyle.textStyleCommon.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dimGray,
                      ),
                    ),
                    space(w: 6.w),
                    SvgPicture.asset(
                      AppIcons.icProfile,
                      color: AppColors.crusta,
                      width: 18.ic,
                      height: 18.ic,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopBar() {
    return Stack(
      children: [
        SizedBox(
          height: 180.h,
          width: Get.width,
          child: Image.asset(
            AppImages.imgHomeTopBar,
            width: Get.width,
            height: 180.h,
            fit: BoxFit.fill,
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                Image.asset(AppImages.imgLogo2),
              ],
            ),
            space(h: 10.h),
            const Align(
              alignment: Alignment.bottomCenter,
              child: Slogan(),
            )
          ],
        ),
      ],
    );
  }
}
