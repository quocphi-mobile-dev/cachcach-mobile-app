import 'package:get/get.dart';

enum PlayMode { couple, friends }

class PlayController extends GetxController {
  PlayMode playMode = PlayMode.couple;
}
