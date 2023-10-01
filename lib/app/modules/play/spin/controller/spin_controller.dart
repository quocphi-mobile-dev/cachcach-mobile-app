import 'dart:math';

import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpinController extends GetxController {
  late AnimationController animationController;
  bool isSpinning = false;
  Duration timeSpin = const Duration(seconds: 3);
  PlayerInfo playerSelected = PlayerInfo();
  CarouselController carouselController = CarouselController();
  int selectedIndex = 0;

  @override
  void onReady() {
    super.onReady();
  }

  void initAnimation({required TickerProvider vsync}) {
    animationController = AnimationController(
      vsync: vsync,
      duration: const Duration(milliseconds: 500),
    );
  }

  void startAnimation() {
    animationController.repeat();
  }

  void stopAnimation() {
    animationController.reset();
  }

  void releaseAnimation() {
    animationController.dispose();
  }

  @override
  void onClose() {
    releaseAnimation();
    super.onClose();
  }

  void checkResult() {
    PlayerController playerController = Get.find();
    for (PlayerInfo playerInfo in playerController.listPlayer) {
      if (playerInfo.truthPoint > 0 || playerInfo.darePoint > 0) {
        Get.toNamed(RouteName.scoreBoard);
        return;
      }
    }

    Get.back();
  }

  Future startRandom() async {
    if (isSpinning) {
      return;
    }
    isSpinning = true;

    Duration timeRandom = const Duration(seconds: 15);
    startAnimation();
    carouselController.jumpToPage(0);
    carouselController.animateToPage(
      1000 + Random().nextInt(100),
      duration: timeRandom,
      curve: const Cubic(0.42, 0.0, 0.0001, 1),
    );

    await Future.delayed(timeRandom);
    stopAnimation();
    await Future.delayed(const Duration(milliseconds: 2000));
    isSpinning = false;
    PlayerController playerController = Get.find();
    playerSelected = playerController.listPlayer[selectedIndex];
    Get.toNamed(RouteName.question);
  }
}
