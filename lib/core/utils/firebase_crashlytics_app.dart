import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class FirebaseCrashlyticsApp {
  static Future<void> recordError(dynamic exception,
      {StackTrace? stackTrace,
      dynamic reason,
      Iterable<DiagnosticsNode> information = const [],
      bool? printDetails,
      bool fatal = false}) async {
    if (kDebugMode) {
      return;
    }

    if (exception.runtimeType is SocketException) {
      return;
    }

    if (exception is DioError) {
      if (exception.type == DioErrorType.cancel) {
        return;
      } else {
        reason =
            "Error by Api ${exception.requestOptions.path} \nError reason: ${exception.message}";
      }
    }

    await FirebaseCrashlytics.instance.recordError(exception, stackTrace,
        information: information,
        printDetails: printDetails,
        fatal: fatal,
        reason: reason);
  }
}
