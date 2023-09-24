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
    Future.delayed(const Duration(seconds: 1)).then((_) => _handleNavigation());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: const Center(
          child: Text("splash 12"),
        ),
      ),
    );
  }

  Future<void> _handleNavigation() async {
    // Get.offAllNamed(RouteName.authMain);
    Get.offAllNamed(RouteName.spin);
    FlutterNativeSplash.remove();
  }
}
