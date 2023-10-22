import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/core/utils/my_size_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

Widget space({double? w, double? h}) {
  return SizedBox(
    width: w,
    height: h,
  );
}

Widget moreWidget() => const Text('・\n・\n・\n', textAlign: TextAlign.center);

Widget divider({
  double height = 1,
  double? thickness,
  Color? color = AppColors.divider,
  double? indent,
  double? endIndent,
  EdgeInsetsGeometry? margin,
}) {
  var divider = Divider(
    height: height,
    thickness: thickness ?? height,
    color: color,
    indent: indent,
    endIndent: endIndent ?? indent,
  );

  if (margin == null) return divider;

  return Padding(padding: margin, child: divider);
}

Widget buildTopBar({VoidCallback? onBack, String? title}) {
  return Stack(
    children: [
      Image.asset(
        AppImages.bgTopBar,
        fit: BoxFit.fill,
        width: Get.width,
        height: 95.h,
      ),
      SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  AppIcons.icArrowLeft,
                  width: 32.w,
                  height: 32.h,
                  color: AppColors.white,
                ),
                onPressed: onBack ??
                    () {
                      Get.back();
                    },
              ),
              space(w: 10.w),
              title != null
                  ? Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          title,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyle.textStyleCommon.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(),
              space(w: 42.w),
            ],
          ),
        ),
      ),
    ],
  );
}

Widget contentWithBackgroundPattern({required Widget child}) {
  return Stack(
    children: [
      Align(
        alignment: Alignment.bottomCenter,
        child: Image.asset(
          AppImages.bgBottom,
          width: Get.width,
          height: 80.h,
          fit: BoxFit.fill,
        ),
      ),
      child,
    ],
  );
}

Widget gradientButton({
  double? width,
  double? height,
  double? borderRadius,
  Gradient? gradient,
  VoidCallback? onTap,
  BoxBorder? border,
  required Widget child,
}) {
  return Container(
    width: width ?? double.infinity,
    height: height ?? 50.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 14.r),
        gradient: gradient ??
            const LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: [
                AppColors.sunshade,
                AppColors.coral,
              ],
            ),
        border: border),
    child: Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(14.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.r),
        onTap: onTap,
        child: child,
      ),
    ),
  );
}

Widget normalButton({
  double? width,
  double? height,
  double? borderRadius,
  VoidCallback? onTap,
  Color? backgroundColor,
  required Widget child,
}) {
  return Container(
    width: width ?? double.infinity,
    height: height ?? 50.h,
    decoration: BoxDecoration(
      color: backgroundColor ?? AppColors.portage,
      borderRadius: BorderRadius.circular(borderRadius ?? 14.r),
    ),
    child: Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(14.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.r),
        onTap: onTap,
        child: child,
      ),
    ),
  );
}

Widget outlineButton({
  double? width,
  double? height,
  double? borderRadius,
  VoidCallback? onTap,
  BoxBorder? border,
  required Widget child,
}) {
  return Container(
    width: width ?? double.infinity,
    height: height ?? 50.h,
    decoration: BoxDecoration(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(borderRadius ?? 14.r),
      border: border ?? Border.all(color: AppColors.grey),
    ),
    child: Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(14.r),
      child: InkWell(
        borderRadius: BorderRadius.circular(14.r),
        onTap: onTap,
        child: child,
      ),
    ),
  );
}

Widget popupEndGame({Function? onBack, Function? onConfirm}) {
  return GestureDetector(
    onTap: () {
      Get.back();
    },
    child: Material(
      color: AppColors.transparent,
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 40.h),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.centerRight,
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
              space(h: 10.h),
              Text(
                "End game?",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
              space(h: 20.h),
              Text(
                "Bạn có muốn kết thúc trò chơi ? \nDữ liệu lần chơi sẽ được lưu lại.",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
              space(h: 20),
              Row(
                children: [
                  space(w: 20.w),
                  TextButton(
                    onPressed: () {
                      onBack?.call();
                    },
                    child: Text(
                      "Quay lại",
                      style: AppTextStyle.textStyleCommon.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                          color: AppColors.crusta,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  const Spacer(),
                  gradientButton(
                    width: 120.w,
                    height: 40.h,
                    borderRadius: 18.r,
                    onTap: () {
                      onConfirm?.call();
                    },
                    child: Center(
                      child: Text(
                        "Xác nhận",
                        style: AppTextStyle.textStyleCommon.copyWith(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  space(w: 20.w),
                ],
              ),
              space(h: 20.h),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget popupWidget({required Widget child}) {
  return Center(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: Material(
        color: AppColors.transparent,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    AppImages.imgTopBarPopup,
                    width: Get.width,
                    height: 138.h,
                    fit: BoxFit.fill,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      AppImages.imgLogo4,
                      width: 120.ic,
                      height: 120.ic,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.w),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SizedBox(
                          width: 28.ic,
                          height: 28.ic,
                          child: Icon(
                            Icons.close,
                            size: 24.ic,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              child
            ],
          ),
        ),
      ),
    ),
  );
}
