import 'dart:async';

import 'package:cachcach/app/data/services/app_bindings.dart';
import 'package:cachcach/app/data/services/app_lifecycle_observer.dart';
import 'package:cachcach/configs/environment.dart';
import 'package:cachcach/core/languages/translation_service.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:cachcach/services/notification_service.dart';
import 'package:cachcach/services/storage_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

/// mainApp
void mainApp(EnvironmentType environment) async {
  runZonedGuarded(() async {
    Environment.config(environment);
    WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Firebase.initializeApp();
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    NotificationService().initialize();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await StorageService().init();
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    await ScreenUtil.ensureScreenSize();
    runApp(CachCachApp(environment: environment));
  }, (error, stackTrace) {
    if (kDebugMode) {
      return;
    }
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

class CachCachApp extends StatefulWidget {
  EnvironmentType? environment;

  CachCachApp({Key? key, this.environment}) : super(key: key);

  @override
  State<CachCachApp> createState() => _CachCachAppState();
}

class _CachCachAppState extends State<CachCachApp> {
  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print(widget.environment);
    }
    WidgetsBinding.instance.addObserver(AppLifecycleObserver());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(AppLifecycleObserver());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          navigatorKey: Get.key,
          // theme: AppTheme.base(Get.theme).appTheme,
          onGenerateRoute: AppRoutes.generateRoute,
          initialRoute: RouteName.splash,
          initialBinding: AppBinding(),
          enableLog: true,
          translations: TranslationService(),
          locale: TranslationService.locale,
          fallbackLocale: TranslationService.fallbackLocale,
        );
      },
    );
  }
}
