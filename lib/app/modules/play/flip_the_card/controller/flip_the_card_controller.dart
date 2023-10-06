import 'package:cachcach/core/utils/constant.dart';
import 'package:get/get.dart';

class FlipTheCardController extends GetxController {
  RxList<String> listCardOrigin = RxList([]);
  RxList<String> listCardRemaining = RxList([]);
  RxString cardContent = "".obs;
  bool canDraw = true;

  @override
  void onReady() {
    listCardOrigin.assignAll(content);
    listCardRemaining.assignAll(content);
    super.onReady();
  }

  void getCard() {
    if (listCardRemaining.isEmpty) {
      return;
    }

    listCardRemaining.shuffle();
    final data = listCardRemaining.first;
    listCardRemaining.remove(data);
    cardContent.value = data;
  }

  int getTotal() {
    return listCardOrigin.length;
  }

  int getCardNumber() {
    return getTotal() - listCardRemaining.length;
  }
}
