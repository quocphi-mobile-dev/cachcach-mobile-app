import 'package:cachcach/core/utils/constant.dart';
import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/model/game_mode_category.dart';
import 'package:cachcach/model/question_collections.dart';
import 'package:cachcach/services/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class SelectModeController extends GetxController {
  RxInt pageSelected = 0.obs;
  GameModeCategory? categorySelected;

  RxList<QuestionCollections> listQuestionCollections = RxList([]);
  List<QuestionCollections> listQuestionCollectionsRandom = [];

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
    if (listQuestionCollectionsRandom.isEmpty) {
      return "";
    }

    listQuestionCollectionsRandom.shuffle();
    QuestionCollections questionCollections =
        listQuestionCollectionsRandom.first;
    String item = questionCollections.getQuestionTruth()?.content ?? "";
    listQuestionCollectionsRandom.remove(questionCollections);
    return item;
  }

  String getRandomDare() {
    if (listQuestionCollectionsRandom.isEmpty) {
      return "";
    }

    listQuestionCollectionsRandom.shuffle();
    QuestionCollections questionCollections =
        listQuestionCollectionsRandom.first;
    String item = questionCollections.getQuestionDare()?.content ?? "";
    listQuestionCollectionsRandom.remove(questionCollections);
    return item;
  }

  void reset() {
    listQuestionCollectionsRandom
        .assignAll(listQuestionCollections.map((element) => element).toList());
  }

  Future getListQuestionCollections(String? categoryId) async {
    try {
      isLoading.value = true;
      listQuestionCollections.assignAll(
          await HomeRepository.getQuestionCollections(
              categoryId: categoryId, cancelToken: cancelToken));
      listQuestionCollectionsRandom.assignAll(
          listQuestionCollections.map((element) => element).toList());
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      handleException(e);
    }
  }
}
