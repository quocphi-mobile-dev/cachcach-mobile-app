import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/routes/routes.dart';
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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Get.offAllNamed(RouteName.login);
      FlutterNativeSplash.remove();
    });
  }
}
