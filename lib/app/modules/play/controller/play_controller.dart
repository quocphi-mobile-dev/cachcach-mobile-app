import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/model/game_mode.dart';
import 'package:cachcach/services/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

enum PlayMode { couple, friends, flipTheCard }

class PlayController extends GetxController {
  PlayMode playMode = PlayMode.couple;
  RxList<GameMode> listGameMode = RxList([]);
  RxBool isLoading = false.obs;
  CancelToken cancelToken = CancelToken();

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
    getGameModes();
  }

  Future getGameModes() async {
    try {
      isLoading.value = true;
      listGameMode.value =
          await HomeRepository.getGameModes(cancelToken: cancelToken);
      pragma('listGameMode.value: ${listGameMode.value.toString()}');
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      handleException(e);
    }
  }
}
