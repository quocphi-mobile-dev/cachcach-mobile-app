import 'package:cachcach/app/modules/play/select_mode/controller/select_mode_controller.dart';
import 'package:cachcach/app/modules/play/select_mode/model/select_mode_model.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
    return Obx(
      () {
        if (controller.listCard.isEmpty) {
          return Container();
        }
        SelectModeModel cardSelected =
            controller.listCard[controller.pageSelected.value];
        return Scaffold(
          backgroundColor: cardSelected.backgroundColor ?? AppColors.bgColor,
          body: SafeArea(
            child: Column(
              children: [
                buildTopBar(title: "Lựa chọn cấp độ"),
                space(h: 12.h),
                Expanded(
                  child: _buildPageCard(),
                ),
                _buildIndicator(),
                _buildButtonUnlockAll(),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildButtonUnlockAll() {
    return Obx(
      () {
        if (controller.listCard.firstWhereOrNull((element) => element.isLock) ==
            null) {
          return Container();
        }

        return Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w),
          child: gradientButton(
            height: 80.h,
            border:
                Border.all(color: AppColors.black.withOpacity(0.3), width: 4),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Mở khoá tất cả",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: currencyFormat.format(199000),
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                        TextSpan(
                          text: " instead of ",
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                        TextSpan(
                          text: currencyFormat.format(398000),
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPageCard() {
    return Obx(() => PageView.builder(
          itemBuilder: (context, index) {
            SelectModeModel model = controller.listCard[index];
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 16.w),
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
          children: List.generate(
            controller.listCard.length,
            (index) {
              SelectModeModel model = controller.listCard[index];
              bool isSelected = controller.pageSelected.value == index;
              double size = 11.ic;
              if (controller.pageSelected.value == index) {
                size = 13.ic;
              }

              if (model.isLock) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 2.w),
                  child: SvgPicture.asset(
                    AppIcons.icLock,
                    width: size,
                    height: size,
                    color: isSelected ? AppColors.white : AppColors.fog,
                  ),
                );
              }

              return Container(
                margin: EdgeInsets.symmetric(horizontal: 2.w),
                child: Icon(
                  Icons.circle,
                  size: size,
                  color: isSelected ? AppColors.white : AppColors.fog,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
