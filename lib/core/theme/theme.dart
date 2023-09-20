import 'package:cachcach/core/theme/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:cachcach/core/theme/dimens.dart';
import 'colors.dart';


export 'colors.dart';
export 'dimens.dart';
export 'icons.dart';
export 'images.dart';
export 'text_styles.dart';

class AppTheme {
  static AppTheme? _instance;

  static late final ThemeData _defaultThemeData;

  factory AppTheme.base(ThemeData theme) {
    if (_instance != null) return _instance!;

    _instance = AppTheme._init(theme);
    return _instance!;
  }

  AppTheme._init(ThemeData theme) {
    _defaultThemeData = theme;
  }

  ThemeData get appTheme {
    return _defaultThemeData.copyWith(
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      textButtonTheme: textButtonTheme,
      primaryColor: AppColors.primary,
      primaryColorDark: AppColors.primary,
      primaryColorLight: AppColors.primary,
      // appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: AppColors.icon),
      scaffoldBackgroundColor: AppColors.background,
      dialogTheme: dialogTheme,
      inputDecorationTheme: inputDecorationTheme,
      // tabBarTheme: tabBarTheme,
    );
  }

  TabBarTheme get tabBarTheme {
    return _defaultThemeData.tabBarTheme.copyWith(
      labelStyle: AppTextStyle.t14w700(),
      unselectedLabelStyle: AppTextStyle.t14w700(),
      labelColor: AppColors.matterhorn,
      unselectedLabelColor: AppColors.nobel,
      indicator: UnderlineTabIndicator(
        borderSide: BorderSide(color: AppColors.indianRed, width: 1.dp),
        insets: EdgeInsets.symmetric(horizontal: 16.dp),
      ),
    );
  }

  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: AppColors.whiteSmoke,
    border: const OutlineInputBorder(),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.silver),
    ),
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.quartz),
    ),
    errorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.indianRed),
    ),
    focusedErrorBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.indianRed),
    ),
    disabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.whiteSmoke),
    ),
    isDense: true,
    hintStyle: AppTextStyle.t14w400(AppColors.pinkSwan),
  );

  DialogTheme get dialogTheme {
    return _defaultThemeData.dialogTheme.copyWith(
      backgroundColor: AppColors.background,
    );
  }

  AppBarTheme? get appBarTheme {
    return _defaultThemeData.appBarTheme.copyWith(
      backgroundColor: AppColors.white,
      centerTitle: true,
      titleTextStyle: AppTextStyle.appbar,
      elevation: 0,
      iconTheme: _defaultThemeData.iconTheme.copyWith(color: AppColors.icon),
      actionsIconTheme: _defaultThemeData.iconTheme.copyWith(
        color: AppColors.icon,
      ),
    );
  }

  ElevatedButtonThemeData get elevatedButtonTheme => ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: MaterialStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.dp),
        ),
      ),
      backgroundColor: MaterialStateProperty.resolveWith(
            (states) {
          if (states.any((state) => state == MaterialState.disabled)) {
            return AppColors.disableButton;
          }
          return AppColors.button;
        },
      ),
      foregroundColor: MaterialStateProperty.resolveWith(
            (states) {
          return AppColors.white;
        },
      ),
      textStyle: MaterialStateProperty.resolveWith(
            (states) => AppTextStyle.button,
      ),
      padding: MaterialStateProperty.resolveWith(
            (states) => EdgeInsets.symmetric(vertical: 14.dp, horizontal: 30),
      ),
    ),
  );

  OutlinedButtonThemeData? get outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.dp),
          ),
        ),
        side: MaterialStateProperty.resolveWith(
              (states) {
            if (states.any((state) => state == MaterialState.disabled)) {
              return const BorderSide(color: AppColors.disableButton);
            }
            return const BorderSide(color: AppColors.button);
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
            if (states.any((state) => state == MaterialState.disabled)) {
              return AppColors.disableButton;
            }
            return AppColors.button;
          },
        ),
        backgroundColor:
        MaterialStateColor.resolveWith((states) => AppColors.white),
        textStyle: MaterialStateProperty.resolveWith(
              (states) => AppTextStyle.button,
        ),
        padding: MaterialStateProperty.resolveWith(
              (states) => EdgeInsets.symmetric(vertical: 14.dp, horizontal: 30),
        ),
      ),
    );
  }

  TextButtonThemeData get textButtonTheme {
    return TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.dp),
          ),
        ),
        foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
            return AppColors.button;
          },
        ),
        textStyle: MaterialStateProperty.resolveWith(
              (states) => AppTextStyle.button,
        ),
        padding: MaterialStateProperty.resolveWith(
              (states) => EdgeInsets.symmetric(vertical: 14.dp, horizontal: 30),
        ),
      ),
    );
  }
}