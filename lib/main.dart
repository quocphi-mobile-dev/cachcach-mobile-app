import 'package:cachcach/app/data/services/app_bindings.dart';
import 'package:cachcach/app/data/services/app_lifecycle_observer.dart';
import 'package:cachcach/core/languages/translation_service.dart';
import 'package:cachcach/core/theme/theme.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  //Todo init later
  // await Firebase.initializeApp();
  // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  // NotificationService().initialize();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const CachCachApp());
}

class CachCachApp extends StatefulWidget {
  const CachCachApp({Key? key}) : super(key: key);

  @override
  State<CachCachApp> createState() => _CachCachAppState();
}

class _CachCachAppState extends State<CachCachApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(AppLifecycleObserver());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(AppLifecycleObserver());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
  }
}
