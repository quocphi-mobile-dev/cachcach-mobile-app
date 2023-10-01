import 'dart:io';

import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/text_styles.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:cachcach/services/storage_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

Future handleException(
  Object e, {
  Function(dynamic)? onError,
}) async {
  // TODO: Update sau khi setup firebase
  // FirebaseCrashlyticsApp.recordError(e);

  var message = '';
  switch (e.runtimeType) {
    case SocketException:
      message = "Không có kết nối mạng";
      break;
    case DioException:
      message = getDioErrorMsg(e as DioException, onError: onError);
      break;
    default:
      message = "Lỗi";
  }

  if (message.isNotEmpty) ToastHelper.showToast(message);
}

String getDioErrorMsg(DioException err, {Function(dynamic)? onError}) {
  try {
    if (err.error is SocketException) {
      return "Không có kết nối mạng";
    }

    if (err.type == DioExceptionType.connectionTimeout) {
      return "Time out";
    }

    if (err.type == DioExceptionType.cancel) {
      return "";
    }

    if (onError != null) {
      onError.call(err.response?.data);
      return "";
    }

    if (err.type == DioExceptionType.badResponse) {
      return handleErrorResponse(err);
    }

    return "Lỗi";
  } catch (e) {
    return e.toString();
  }
}

String handleErrorResponse(DioException err) {
  switch (err.response?.statusCode) {
    case 401:
      if (Get.currentRoute == RouteName.login) {
        return "";
      }
      StorageService().saveToken = null;
      Get.offAllNamed(RouteName.login);
      return "Phiên đang nhập hết hạn";
    case 422:
      return "Error 422";
    case 400:
      return "Error 400";
    default:
      return "Lỗi";
  }
}

class ToastHelper {
  static SnackbarController showToast(
    String msg, {
    TextStyle? style,
    Color? textColor,
    Widget? icon,
    Color? background,
    TextOverflow? overflow,
    TextAlign textAlign = TextAlign.center,
    Duration duration = const Duration(seconds: 2),
  }) {
    return GetSnackBar(
      messageText: Text(
        msg,
        style: style ??
            AppTextStyle.textStyleCommon
                .copyWith(color: textColor ?? AppColors.white, fontSize: 14.sp),
        overflow: overflow,
        textAlign: textAlign,
      ),
      icon: icon,
      duration: duration,
      margin: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
      borderRadius: 24.r,
      backgroundColor: background ?? AppColors.black.withOpacity(0.6),
    ).show();
  }

  static hideSnackBar() {
    if (Get.isSnackbarOpen) {
      Get.back();
    }
  }
}

void showLoading() {
  Get.dialog(
      const Center(
        child: CupertinoActivityIndicator(
          color: AppColors.black,
        ),
      ),
      barrierDismissible: false,
      name: 'loading',
      barrierColor: AppColors.black.withOpacity(0.3));
}

void hideLoading() {
  Get.back();
}

var currencyFormat = NumberFormat.currency(locale: "vi");