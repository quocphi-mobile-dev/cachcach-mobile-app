import 'package:cachcach/app/modules/play/controller/play_controller.dart';
import 'package:cachcach/app/modules/play/select_mode/card/select_mode_card.dart';
import 'package:cachcach/app/modules/play/select_mode/controller/select_mode_controller.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:cachcach/model/game_mode_category.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/cupertino.dart';
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      controller.getListCategory(Get.arguments['id']);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: contentWithBackgroundPattern(
        child: Column(
          children: [
            buildTopBar(title: "Lựa chọn cấp độ"),
            space(h: 12.h),
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
    return Obx(() {
      if (controller.isLoading.value) {
        return const Center(
          child: CupertinoActivityIndicator(),
        );
      }

      return PageView.builder(
        itemBuilder: (context, index) {
          GameModeCategory category = controller.listCategory[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 16.w),
            child: SelectModeCard(
              title: "",
              totalCards: 10,
              image: AppImages.imgClassic,
              label: category.name ?? "",
              guideText: category.description ?? "",
              isLock: false,
              price: 0,
              onPlay: () {
                controller.categorySelected = category;
                if (Get.find<PlayController>().playMode ==
                    PlayMode.flipTheCard) {
                  Get.toNamed(RouteName.flipTheCard,
                      arguments: {"category_id": category.id});
                } else {
                  Get.toNamed(RouteName.player,
                      arguments: {"category_id": category.id});
                }
              },
            ),
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
}
