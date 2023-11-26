import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../core/theme/images.dart';
import '../../../../../core/theme/text_styles.dart';
import 'card_select_mode_controller.dart';

class CardSelectModeScreen extends StatefulWidget {
  const CardSelectModeScreen({super.key});

  @override
  State<CardSelectModeScreen> createState() => _CardSelectModeScreenState();
}

class _CardSelectModeScreenState extends State<CardSelectModeScreen> {
  final controller = Get.put(CardSelectModeController());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      controller.getListCategory(Get.arguments['id']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black900,
      body: contentWithBackgroundPattern(
        child: Column(
          children: [
            buildTopBar(title: "Lật thẻ bài"),
            space(h: 12.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Center(
                        child: Text(
                          "CHỌN CHẾ ĐỘ CHƠI",
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.yellowOrange,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  _buildRowRules(),
                ],
              ),
            ),
            space(h: 20.h),
            Expanded(
              child: _buildPageCard(),
            ),
            _buildIndicator(),
            space(h: 50.h),
          ],
        ),
      ),
    );
  }

  Widget _buildPageCard() {
    List<String> listImages = [
      AppImages.imgKhoiDong,
      AppImages.imgThuocPhim,
      AppImages.img18,
    ];

    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      }
      return PageView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
              child: Image.asset(
                listImages[index],
                fit: BoxFit.fill,
              ),
            ),
            onTap: () {
              print(
                  "controller.pageSelected.value : ${controller.pageSelected.value}");

              if (controller.pageSelected.value == 0) {
                Get.toNamed(RouteName.flipTheCard,
                    arguments: {"category_id": 1});
              }
              if (controller.pageSelected.value == 1) {
                Get.toNamed(RouteName.flipTheCard,
                    arguments: {"category_id": 5});
              }
              if (controller.pageSelected.value == 2) {
                Get.toNamed(RouteName.flipTheCard,
                    arguments: {"category_id": 4});
              }
            },
          );
        },
        onPageChanged: (index) {
          controller.pageSelected.value = index;
        },
        itemCount: controller.listCategory.length,
      );
    });
  }

  Widget _buildIndicator() {
    return Obx(
      () => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            controller.listCategory.length,
            (index) {
              bool isSelected = controller.pageSelected.value == index;
              double size = 14.ic;
              if (controller.pageSelected.value == index) {
                size = 14.ic;
              }

              return Container(
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                child: Icon(
                  Icons.circle,
                  size: size,
                  color: isSelected ? AppColors.crusta : AppColors.grey,
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildRowRules() {
    return Align(
      alignment: Alignment.topRight,
      child: InkWell(
        onTap: () {
          showRulesFlipCard();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Luật chơi",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
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
    );
  }
}
