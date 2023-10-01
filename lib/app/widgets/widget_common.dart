import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/icons.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/routes/routes.dart';
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

Widget buildTopBar({VoidCallback? onBack, bool useSetting = false}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            AppIcons.icArrowLeft,
            width: 32.w,
            height: 32.h,
          ),
          onPressed: onBack ??
              () {
                Get.back();
              },
        ),
        useSetting
            ? IconButton(
                icon: Image.asset(
                  AppImages.imgSettings,
                  width: 44.w,
                  height: 44.h,
                ),
                onPressed: () {
                  Get.toNamed(RouteName.setting);
                },
              )
            : Container(),
      ],
    ),
  );
}

Widget gradientButton({
  double? width,
  double? height,
  double? borderRadius,
  Gradient? gradient,
  VoidCallback? onTap,
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
