import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:cachcach/services/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _handleNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.bgColor,
    );
  }

  Future<void> _handleNavigation() async {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      // if ((await StorageService().token)?.isNotEmpty == true) {
      //   Get.offAllNamed(RouteName.home);
      // } else {
      //   Get.offAllNamed(RouteName.login);
      // }
      Get.offAllNamed(RouteName.home);
      FlutterNativeSplash.remove();
    });
  }
}
