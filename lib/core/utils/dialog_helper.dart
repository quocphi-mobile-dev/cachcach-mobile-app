import 'package:cachcach/app/widgets/dialog.dart';
import 'package:cachcach/app/widgets/loading_dialog.dart';
import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogHelper {
  static void showLoading() {
    Get.dialog(LoadingDialog(), barrierDismissible: false, name: 'loading');
  }

  static Future showLinearLoading({
    required Future Function(ProgressLoadingController controller) onProcess,
    String? description,
  }) async {
    final progressController = ProgressLoadingController();
    try {
      Get.dialog(
        LoadingDialog.linear(
          progressController,
          description: description,
          color: AppColors.indianRed,
        ),
        barrierDismissible: false,
      );

      await onProcess(progressController);

      Get.back();
      progressController.dispose();
    } catch (e) {
      Get.back();
      progressController.dispose();
      rethrow;
    }
  }

  static void hideDialog({bool closeOverlays = false}) {
    if (Get.isDialogOpen ?? false) Get.back(closeOverlays: closeOverlays);
  }

  static bool isDialogOpen() {
    return Get.isDialogOpen ?? false;
  }

  static Future custom(
    Widget child, {
    VoidCallback? onPositionPressed,
    String? positionLabel,
  }) async {
    return await Get.dialog(DialogBase(
      builder: (context) => child,
      positionLabel: positionLabel,
      onPositionPressed: () {
        Get.back();
        onPositionPressed?.call();
      },
    ));
  }

  static Future confirm(
    String message, {
    bool showNegativeButton = false,
    VoidCallback? onPositionPressed,
    VoidCallback? onNegativePressed,
    String? positionLabel,
    String? negativeLabel,
  }) async {
    return await Get.dialog(
      DialogBase(
        builder: (context) => Text(message, textAlign: TextAlign.center),
        positionLabel: positionLabel,
        negativeLabel: negativeLabel,
        onPositionPressed: () {
          Get.back();
          onPositionPressed?.call();
        },
        onNegativePressed: () {
          Get.back();
          onNegativePressed?.call();
        },
        showNegativeButton: showNegativeButton,
      ),
    );
  }

  static Future<T?> bottomList<T>({
    List<T> options = const [],
    T? selected,
  }) async {
    Widget item(option, {bool selected = false}) {
      return GestureDetector(
        onTap: () => Get.back(result: option),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.dp),
          child: Row(
            children: [
              Expanded(
                child: Text(option.toString(), style: AppTextStyle.t14w700()),
              ),
              space(w: 8.dp),
              if (!selected) Icon(Icons.radio_button_off_rounded, size: 16),
              if (selected) Icon(Icons.radio_button_on_rounded, size: 16),
            ],
          ),
        ),
      );
    }

    return Get.bottomSheet<T?>(Container(
      color: AppColors.white,
      padding: EdgeInsets.all(16.dp),
      child: ListView.separated(
        itemBuilder: (context, index) => item(
          options[index],
          selected: options[index] == selected,
        ),
        separatorBuilder: (context, index) => divider(),
        itemCount: options.length,
      ),
    ));
  }
}
