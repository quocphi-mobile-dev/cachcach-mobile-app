import 'package:cachcach/app/modules/play/select_mode/controller/select_mode_controller.dart';
import 'package:cachcach/app/modules/play/select_mode/model/select_mode_model.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectModeScreen extends StatefulWidget {
  const SelectModeScreen({super.key});

  @override
  State<SelectModeScreen> createState() => _SelectModeScreenState();
}

class _SelectModeScreenState extends State<SelectModeScreen> {
  final controller = Get.put(SelectModeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: Column(
          children: [
            buildTopBar(useSetting: true),
            space(h: 12.h),
            Text(
              "Select a Mode",
              style: AppTextStyle.textStyleCommon.copyWith(
                fontSize: 34.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
            space(h: 50.h),
            Expanded(
              child: _buildPageCard(),
            ),
            space(h: 30),
            _buildIndicator(),
          ],
        ),
      ),
    );
  }

  Widget _buildPageCard() {
    return Obx(() => PageView.builder(
          itemBuilder: (context, index) {
            SelectModeModel model = controller.listCard[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 40.w),
              child: model.card,
            );
          },
          onPageChanged: (index) {
            controller.pageSelected.value = index;
          },
          itemCount: controller.listCard.length,
        ));
  }

  Widget _buildIndicator() {
    return Obx(
      () => Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(controller.listCard.length, (index) {
            SelectModeModel model = controller.listCard[index];
            bool isSelected = controller.pageSelected.value == index;
            double size = 11.w;
            if (controller.pageSelected.value == index) {
              size = 13.w;
            }

            if (model.isLock) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                child: Icon(
                  Icons.lock,
                  size: size,
                  color: AppColors.black,
                ),
              );
            }

            return Container(
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              child: Icon(
                Icons.circle,
                size: size,
                color: isSelected ? AppColors.black : AppColors.grey400,
              ),
            );
          }),
        ),
      ),
    );
  }
}
