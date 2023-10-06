import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum Gender { male, female }

class PlayerInfo {
  Rx<Gender> gender = Rx(Gender.female);
  TextEditingController textEditingController = TextEditingController();

  String get name => textEditingController.text.toString();

  int truthPoint = 0;
  int darePoint = 0;

  int truthGiveUpPoint = 0;
  int dareGiveUpPoint = 0;

  int get totalPoint => truthPoint + darePoint;

  int heroWidgetId = 0;

  PlayerInfo({Gender? gender, String? name}) {
    if (gender != null) {
      this.gender.value = gender;
    }

    if (name != null) {
      textEditingController.text = name;
    }
  }

  void reset() {
    truthPoint = 0;
    darePoint = 0;
    truthGiveUpPoint = 0;
    dareGiveUpPoint = 0;
    heroWidgetId = 0;
  }
}
