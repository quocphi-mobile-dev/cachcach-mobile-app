import 'package:cachcach/core/extensions/iterable_extension.dart';
import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/model/question_collections.dart';
import 'package:cachcach/services/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class FlipTheCardController extends GetxController {
  RxString cardContent = "".obs;
  bool canDraw = true;
  RxBool isLoading = false.obs;
  RxList<QuestionCollections> listQuestionCollections = RxList([]);
  RxList<QuestionCollections> listQuestionCollectionsRemaining = RxList([]);
  CancelToken cancelToken = CancelToken();

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }

  void getCard() {
    if (listQuestionCollectionsRemaining.isEmpty) {
      return;
    }

    listQuestionCollectionsRemaining.shuffle();
    final data = listQuestionCollectionsRemaining.first;
    listQuestionCollectionsRemaining.remove(data);
    cardContent.value = data.questions?.firstOrNull()?.content ?? "";
  }

  int getTotal() {
    return listQuestionCollections.length;
  }

  int getCardNumber() {
    return getTotal() - listQuestionCollectionsRemaining.length;
  }

  Future getListQuestionCollections(String? categoryId) async {
    try {
      isLoading.value = true;
      listQuestionCollections.assignAll(
          await HomeRepository.getQuestionCollections(
              categoryId: categoryId, cancelToken: cancelToken));
      listQuestionCollectionsRemaining.assignAll(
          listQuestionCollections.map((element) => element).toList());
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      handleException(e);
    }
  }
}
