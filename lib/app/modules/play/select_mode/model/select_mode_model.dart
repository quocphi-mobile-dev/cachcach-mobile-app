import 'package:flutter/material.dart';

class SelectModeModel {
  bool isLock;
  Widget card;

  SelectModeModel({
    this.isLock = true,
    required this.card,
  });
}
