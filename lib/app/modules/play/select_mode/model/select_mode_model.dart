import 'package:flutter/material.dart';

class SelectModeModel {
  bool isLock;
  Color? backgroundColor;
  Widget card;

  SelectModeModel({
    this.isLock = true,
    this.backgroundColor,
    required this.card,
  });
}
