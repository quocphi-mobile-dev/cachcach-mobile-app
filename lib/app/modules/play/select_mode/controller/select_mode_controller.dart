import 'package:cachcach/core/utils/constant.dart';
import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/model/game_mode_category.dart';
import 'package:cachcach/services/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SelectModeController extends GetxController {
  RxInt pageSelected = 0.obs;
  GameModeCategory? categorySelected;

  List<String> listTruth = [];
  List<String> listDare = [];

  RxBool isLoading = false.obs;
  RxList<GameModeCategory> listCategory = RxList([]);
  CancelToken cancelToken = CancelToken();

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }

  @override
  void onReady() {
    super.onReady();
  }

  Future getListCategory(int? id) async {
    try {
      isLoading.value = true;
      listCategory.value = await HomeRepository.getGameModeCategories(
          id: id, cancelToken: cancelToken);
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      handleException(e);
    }
  }

  String getRandomTruth() {
    if (listTruth.isEmpty) {
      return "";
    }

    listTruth.shuffle();
    String item = listTruth.first;
    listTruth.remove(item);
    return item;
  }

  String getRandomDare() {
    if (listDare.isEmpty) {
      return "";
    }

    listDare.shuffle();
    String item = listDare.first;
    listDare.remove(item);
    return item;
  }

  void reset() {
    listTruth.assignAll(content);
    listDare.assignAll(content);
  }
}
