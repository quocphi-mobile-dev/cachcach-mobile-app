import 'dart:math';

import 'package:cachcach/app/widgets/widget_common.dart';
import 'package:cachcach/core/theme/colors.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FlipTheCardScreen extends StatefulWidget {
  const FlipTheCardScreen({super.key});

  @override
  State<FlipTheCardScreen> createState() => _FlipTheCardScreenState();
}

class _FlipTheCardScreenState extends State<FlipTheCardScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController control;

  late Animation<double> rot;

  late Animation<double> trasl;

  FlipCardController flipCardController = FlipCardController();

  @override
  void initState() {
    super.initState();

    control = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );

    rot = Tween<double>(
      begin: 0,
      end: 0.2 * pi,
    ).animate(control);

    trasl = Tween<double>(
      begin: 0,
      end: Get.height,
    ).animate(control);

    control.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        flipCardController.controller?.reset();
        control.reset();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            buildTopBar(),
            Expanded(
              child: AnimatedBuilder(
                animation: control,
                builder: (BuildContext context, Widget? child) {
                  return Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Transform.translate(
                          offset: Offset(0, trasl.value),
                          child: Transform(
                            transform: Matrix4.rotationZ(rot.value),
                            child: FlipCard(
                              key: Key(1.toString()),
                              controller: flipCardController,
                              front: Container(
                                width: 150.w,
                                height: 250.h,
                                decoration: BoxDecoration(
                                    color: AppColors.red,
                                    borderRadius: BorderRadius.circular(20.r)),
                              ),
                              back: Container(
                                width: 150.w,
                                height: 250.h,
                                decoration: BoxDecoration(
                                    color: AppColors.blue,
                                    borderRadius: BorderRadius.circular(20.r)),
                              ),
                              onFlipDone: (isFlipDone) async {
                                await Future.delayed(
                                    const Duration(seconds: 2));
                                control.forward();
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
