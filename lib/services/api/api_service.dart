import 'dart:io';

import 'package:cachcach/configs/environment.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'app_interceptor.dart';

class ApiService extends DioMixin {
  static final ApiService _service = ApiService._internal();

  ApiService._internal() {
    options = BaseOptions(
      baseUrl: Environment.host,
      connectTimeout: Environment.apiTimeout,
    );
    options.headers.putIfAbsent("Content-Type", () => "application/json");
    options.headers.putIfAbsent("Accept", () => "application/json");
    interceptors.add(AppInterceptor());
    if (kDebugMode) {
      interceptors.add(PrettyDioLogger());
    }

    httpClientAdapter = IOHttpClientAdapter();
    (httpClientAdapter as IOHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
  }

  factory ApiService() => _service;
}
