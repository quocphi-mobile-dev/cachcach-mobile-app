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
  return popupWidget(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          space(h: 20.h),
          Text(
            "Bạn có muốn thoát?",
            style: AppTextStyle.textStyleCommon.copyWith(
              fontSize: 19.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black,
            ),
          ),
          space(h: 20.h),
          normalButton(
            onTap: () {
              Get.back();
              onBack?.call();
            },
            height: 42.h,
            backgroundColor: AppColors.orange,
            child: Center(
              child: Text(
                "Thoát mà không lưu",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          space(h: 12.h),
          gradientButton(
            onTap: () {
              onConfirm?.call();
            },
            height: 42.h,
            child: Center(
              child: Text(
                "Lưu lịch sử",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          space(h: 30.h),
        ],
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
                      AppImages.imgLogo2,
                      width: 120.ic,
                      height: 120.ic,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.w, vertical: 10.w),
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

void showRulesTruthOrDare() {
  Get.dialog(
    popupWidget(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            space(h: 12.h),
            Center(
              child: Text(
                "Truth or Dare",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            space(h: 12.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Bộ bài sẽ có tổng cộng N lá bài, mỗi lá có 1 Truth và 1 Dare.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Luật chơi là mọi người sẽ ngồi vòng tròn, sau đó bạn cần phải quay vòng quay may rủi trên APP để biết tên người thực hiện thử thách.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Người thực hiện  chọn “Truth” bạn sẽ phải trả lời đúng sự thật với câu hỏi được ghi trên lá bài. Còn nếu chọn “Dare”, bạn phải thực hiện theo những gì lá bài ghi.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Chúc các bạn chơi game vui vẻ.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            space(h: 40),
          ],
        ),
      ),
    ),
  );
}
void showRulesFlipCard() {
  Get.dialog(
    popupWidget(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            space(h: 12.h),
            Center(
              child: Text(
                "Lật thẻ bài",
                style: AppTextStyle.textStyleCommon.copyWith(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            space(h: 12.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Mỗi một bộ bài có số lượng lá nhất định.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Mỗi lá bài sẽ có một sự kiện, nội dung hay các nhiệm vụ có thể liên quan đến mối quan hệ, tình cảm hoặc những trải nghiệm thú vị.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Bạn sẽ lật một lá bài và thực hiện nhiệm theo nội dung lá bài.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Trò chơi này thường mang đến niềm vui, sự hứng khởi và cơ hội để bạn và bạn bè hiểu rõ hơn về nhau. Chúc các bạn chơi game vui vẻ.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "-",
                  style: AppTextStyle.textStyleCommon.copyWith(
                    fontSize: 13.sp,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                space(w: 4),
                Expanded(
                  child: Text(
                    "Chúc các bạn chơi game vui vẻ.",
                    style: AppTextStyle.textStyleCommon.copyWith(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.black,
                    ),
                  ),
                ),
              ],
            ),
            space(h: 40),
          ],
        ),
      ),
    ),
  );
}
