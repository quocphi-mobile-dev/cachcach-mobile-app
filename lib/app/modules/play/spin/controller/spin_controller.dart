import 'dart:math';

import 'package:cachcach/app/modules/play/player/controller/player_controller.dart';
import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpinController extends GetxController {
  late AnimationController animationController;
  late Animation<double> animation;
  RxBool isSpinning = false.obs;
  Duration timeSpin = const Duration(seconds: 3);
  PlayerInfo playerSelected = PlayerInfo();

  @override
  void onReady() {
    super.onReady();
  }

  void initAnimation({required TickerProvider vsync}) {
    animationController = AnimationController(vsync: vsync);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isSpinning.value = false;
        Get.toNamed(RouteName.question);
      }
    });
    setRotation(0);
  }

  void setRotation(int degrees) {
    final angle = degrees * pi / 180;
    animation =
        Tween<double>(begin: 0, end: angle).animate(animationController);
  }

  void releaseAnimation() {
    animationController.dispose();
  }

  Future<void> startSpinning() async {
    if (isSpinning.value) {
      return;
    }

    isSpinning.value = true;
    animationController.reset();
    setRotation(360 * 30 + getRandomRotation());

    animationController.animateTo(1,
        duration: timeSpin, curve: const Cubic(0.42, 0.0, 0.001, 1));
  }

  int getRandomRotation() {
    PlayerController playerController = Get.find();
    int index = Random().nextInt(playerController.listPlayer.length);
    playerSelected = playerController.listPlayer[index];
    return ((360 / playerController.listPlayer.length) * index).toInt();
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
}
