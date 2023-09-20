import 'package:cachcach/core/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cachcach/core/theme/dimens.dart';


class AppTextStyle {
  @Deprecated('')
  static const appBarStyle = TextStyle(
    color: AppColors.black,
    fontSize: 16.0,
  );
  @Deprecated('')
  static const buttonStyle = TextStyle(
    color: AppColors.white,
    fontSize: 16.0,
  );
  @Deprecated('')
  static const textStyle10 = TextStyle(fontSize: 10.0);
  @Deprecated('')
  static const textStyle12 =
  TextStyle(color: AppColors.black45, fontSize: 12.0);
  @Deprecated('')
  static const textStyle12Button =
  TextStyle(color: AppColors.black, fontSize: 12.0);
  @Deprecated('')
  static const textStyle12Bold = TextStyle(
      color: AppColors.matterhorn, fontSize: 12, fontWeight: FontWeight.bold);
  @Deprecated('')
  static const textStyle12Red = TextStyle(
      color: AppColors.red, fontSize: 12, fontWeight: FontWeight.bold);
  @Deprecated('')
  static const textStyle12IndianRed = TextStyle(
    color: AppColors.indianRed,
    fontSize: 12,
  );
  @Deprecated('')
  static const textStyle12IndianRedBold = TextStyle(
      color: AppColors.indianRed, fontSize: 12, fontWeight: FontWeight.bold);
  @Deprecated('')
  static const textStyle12MatterHorn = TextStyle(
    color: AppColors.matterhorn,
    fontSize: 12,
  );

  @Deprecated('')
  static const textStyle14 = TextStyle(color: AppColors.black, fontSize: 14.0);

  @Deprecated('')
  static const textStyle14IndianRedBold = TextStyle(
      color: AppColors.indianRed, fontSize: 14.0, fontWeight: FontWeight.bold);

  @Deprecated('')
  static const textStyle16 = TextStyle(color: AppColors.black, fontSize: 16.0);
  @Deprecated('')
  static const textStyle16White = TextStyle(
    color: AppColors.white,
    fontSize: 16.0,
  );
  @Deprecated('')
  static const textStyle16Red = TextStyle(color: AppColors.red, fontSize: 16.0);
  @Deprecated('')
  static const textStyle16Silver =
  TextStyle(color: AppColors.silver, fontSize: 16.0);

  @Deprecated('')
  static const textStyleTitleScreen =
  TextStyle(color: AppColors.black, fontWeight: FontWeight.w500);
  @Deprecated('')
  static const textStyleItemBottomBar = TextStyle(
    color: AppColors.black,
    fontSize: 12.0,
  );

  static TextStyle get button => t14w700();

  static TextStyle get appbar => t16w700(AppColors.appbarText);

  static TextStyle common(
      double? fontSize,
      FontWeight? fontWeight,
      Color? color, [
        TextDecoration? decoration = TextDecoration.none,
        double? height = 1.25,
      ]) {
    return TextStyle(
      color: color ?? AppColors.text,
      fontWeight: fontWeight,
      fontSize: fontSize?.dp,
      decoration: decoration,
      height: height,
      fontFamily: 'NotoSansJP',
    );
  }

  static TextStyle t10w400([Color? color, double? height]) {
    return common(10, FontWeight.w400, color, null, height);
  }

  static TextStyle t11w400([Color? color, double? height]) {
    return common(11, FontWeight.w400, color, null, height);
  }

  static TextStyle t11w500([Color? color, double? height]) {
    return common(11, FontWeight.w500, color, null, height);
  }

  static TextStyle t11w700([Color? color, double? height]) {
    return common(11, FontWeight.w700, color, null, height);
  }

  static TextStyle t12w400([Color? color, double? height]) {
    return common(12, FontWeight.w400, color, null, height);
  }

  static TextStyle t12w500([Color? color, double? height]) {
    return common(12, FontWeight.w500, color, null, height);
  }

  static TextStyle t12w700([Color? color, double? height]) {
    return common(12, FontWeight.w700, color, null, height);
  }

  static TextStyle t14w400([Color? color, double? height]) {
    return common(14, FontWeight.w400, color, null, height);
  }

  static TextStyle t14w500([Color? color, double? height]) {
    return common(14, FontWeight.w500, color, null, height);
  }

  static TextStyle t14w600([Color? color, double? height]) {
    return common(14, FontWeight.w600, color, null, height);
  }

  static TextStyle t14w700([Color? color, double? height]) {
    return common(14, FontWeight.w700, color, null, height);
  }

  static TextStyle t15w600([Color? color, double? height]) {
    return common(15, FontWeight.w600, color, null, height);
  }

  static TextStyle t16w400([Color? color, double? height]) {
    return common(16, FontWeight.w400, color, null, height);
  }

  static TextStyle t16w500([Color? color, double? height]) {
    return common(16, FontWeight.w500, color, null, height);
  }

  static TextStyle t16w700([Color? color, double? height]) {
    return common(16, FontWeight.w700, color, null, height);
  }

  static TextStyle t18w700([Color? color, double? height]) {
    return common(18, FontWeight.w700, color, null, height);
  }

  static TextStyle t18w400([Color? color, double? height]) {
    return common(18, FontWeight.w700, color, null, height);
  }

  static TextStyle t18w500([Color? color, double? height]) {
    return common(18, FontWeight.w700, color, null, height);
  }

  static TextStyle t20w700([Color? color, double? height]) {
    return common(20, FontWeight.w700, color, null, height);
  }

  static TextStyle t22w400([Color? color, double? height]) {
    return common(22, FontWeight.w400, color, null, height);
  }

  static TextStyle t22w700([Color? color, double? height]) {
    return common(22, FontWeight.w700, color, null, height);
  }

  static TextStyle t24w400([Color? color, double? height]) {
    return common(24, FontWeight.w400, color, null, height);
  }

  static TextStyle t24w700([Color? color, double? height]) {
    return common(24, FontWeight.w700, color, null, height);
  }
}
