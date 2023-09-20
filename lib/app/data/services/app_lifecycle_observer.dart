import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLifecycleObserver extends WidgetsBindingObserver {
  static final AppLifecycleObserver _observer =
      AppLifecycleObserver._internal();

  AppLifecycleObserver._internal();

  factory AppLifecycleObserver() => _observer;

  final _streamController = StreamController<AppLifecycleState>.broadcast();

  Stream<AppLifecycleState> get status async* {
    yield* _streamController.stream;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print('state = $state');
    switch (state) {
      case AppLifecycleState.inactive:
      case AppLifecycleState.paused:
      case AppLifecycleState.detached:
        break;

      case AppLifecycleState.resumed:
        // Get.put(AppService()).checkinApp();
        break;
      case AppLifecycleState.hidden:
      // TODO: Handle this case.
    }
    _streamController.add(state);
  }
}
