import 'dart:math';

import 'package:cachcach/app/modules/play/controller/play_controller.dart';
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
  List<PlayerInfo> listPlayerUseRandom = [];
  int totalPlay = 0;
  int specialTimeSpin = 10;
  late PlayMode playMode;

  @override
  void onReady() {
    playMode = Get.find<PlayController>().playMode;
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

    totalPlay++;
    isSpinning = true;

    PlayerController playerController = Get.find();

    if (listPlayerUseRandom.isEmpty) {
      listPlayerUseRandom.assignAll(playerController.listPlayer);
    }

    Duration timeRandom = const Duration(seconds: 3);

    startAnimation();
    carouselController.jumpToPage(0);

    int pageSelected = 0;
    int times = 150 ~/ playerController.listPlayer.length;

    if (playMode == PlayMode.couple) {
      PlayerInfo playerRandom = listPlayerUseRandom.first;
      int indexRandom = playerController.listPlayer.indexOf(playerRandom);
      if (specialTimeSpin > 2 && totalPlay % specialTimeSpin == 0) {
        indexRandom = playerController.listPlayer.indexOf(playerSelected);
      } else {
        listPlayerUseRandom.remove(playerRandom);
      }
      pageSelected = (playerController.listPlayer.length * times) + indexRandom;
    } else {
      listPlayerUseRandom.shuffle();
      PlayerInfo playerRandom = listPlayerUseRandom.first;
      int indexRandom = playerController.listPlayer.indexOf(playerRandom);
      listPlayerUseRandom.remove(playerRandom);
      pageSelected = (playerController.listPlayer.length * times) + indexRandom;
    }

    carouselController.animateToPage(
      pageSelected,
      duration: timeRandom,
      curve: const Cubic(0.42, 0.0, 0.0001, 1),
    );

    await Future.delayed(timeRandom);
    stopAnimation();
    await Future.delayed(const Duration(milliseconds: 1000));
    isSpinning = false;
    playerSelected = playerController.listPlayer[selectedIndex];
    Get.toNamed(RouteName.question);
  }
}
