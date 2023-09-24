import 'dart:math';

import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SpinController extends GetxController {
  late AnimationController animationController;
  late Animation<double> animation;
  RxBool isSpinning = false.obs;
  Duration timeSpin = const Duration(seconds: 3);

  RxList<PlayerInfo> listPlayer = RxList([]);

  @override
  void onReady() {
    super.onReady();
    listPlayer.assignAll([
      PlayerInfo(gender: Gender.male, name: "Player 1"),
      PlayerInfo(gender: Gender.male, name: "Player 2"),
      PlayerInfo(gender: Gender.male, name: "Player 3"),
      PlayerInfo(gender: Gender.male, name: "Player 4"),
      PlayerInfo(gender: Gender.male, name: "Player 5"),
      PlayerInfo(gender: Gender.male, name: "Player 6"),
      PlayerInfo(gender: Gender.male, name: "Player 7"),
      // PlayerInfo(gender: Gender.male, name: "Player 8"),
      // PlayerInfo(gender: Gender.male, name: "Player 9"),
      // PlayerInfo(gender: Gender.male, name: "Player 10"),
    ]);
  }

  void initAnimation({required TickerProvider vsync}) {
    animationController = AnimationController(vsync: vsync);

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isSpinning.value = false;
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
        duration: timeSpin,
        curve: const Cubic(0.42, 0.0, 0.001, 1));
  }

  int getRandomRotation() {
    return ((360 / listPlayer.length) * Random().nextInt(listPlayer.length))
        .toInt();
  }
}
