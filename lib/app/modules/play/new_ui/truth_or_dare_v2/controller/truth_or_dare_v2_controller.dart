import 'package:cachcach/core/utils/top_level_function.dart';
import 'package:cachcach/model/question_collections.dart';
import 'package:cachcach/services/repositories/home_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class TruthOrDareV2Controller extends GetxController {
  CancelToken cancelToken = CancelToken();
  RxBool isLoading = RxBool(false);
  RxList<QuestionCollections> listQuestionCollections = RxList([]);
  RxString contentTruth = "".obs;
  RxString contentDare = "".obs;
  Rx<QuestionCollections?> questionSelected = Rx(null);
  RxBool isEndGame = false.obs;

  @override
  void onClose() {
    cancelToken.cancel();
    super.onClose();
  }

  Future getListQuestionCollections(String? categoryId) async {
    try {
      print("categoryId: $categoryId");
      print("getListQuestionCollections");
      isLoading.value = true;
      listQuestionCollections.assignAll(
          await HomeRepository.getQuestionCollections(
              categoryId: categoryId, cancelToken: cancelToken));
      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      handleException(e);
    }
  }

  void randomQuestion() {
    listQuestionCollections.shuffle();
    QuestionCollections questionCollections = listQuestionCollections.first;
    questionSelected.value = questionCollections;
    contentTruth.value = questionCollections.getQuestionTruth()?.content ?? "";
    contentDare.value = questionCollections.getQuestionDare()?.content ?? "";
  }

  void removeItemSelected() {
    if (questionSelected.value != null) {
      listQuestionCollections.remove(questionSelected.value);
      questionSelected.value = null;
      isEndGame.value = listQuestionCollections.isEmpty;
    }
  }
}
