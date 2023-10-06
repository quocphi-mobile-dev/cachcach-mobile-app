import 'package:cachcach/app/modules/play/select_mode/card/select_mode_card.dart';
import 'package:cachcach/app/modules/play/select_mode/model/mode.dart';
import 'package:cachcach/app/modules/play/select_mode/model/select_mode_model.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:get/get.dart';

class SelectModeController extends GetxController {
  RxInt pageSelected = 0.obs;
  RxList<SelectModeModel> listCard = RxList([]);
  Mode mode = Mode.classic;

  List<String> listTruth = [];
  List<String> listDare = [];

  @override
  void onReady() {
    super.onReady();
    listCard.assignAll(
      List.generate(
        Mode.values.length,
        (index) {
          final mode = Mode.values[index];
          return SelectModeModel(
            isLock: mode.isLock(),
            backgroundColor: mode.getBackgroundColor(),
            card: SelectModeCard(
              title: mode.getTitle(),
              totalCards: mode.getTotalCard(),
              image: mode.getImage(),
              label: mode.getLabel(),
              guideText: mode.getGuideText(),
              isLock: mode.isLock(),
              price: mode.getPrice(),
              onPlay: () {
                this.mode = mode;
                listTruth.assignAll(mode.getListTruth());
                listDare.assignAll(mode.getListDare());
                Get.toNamed(RouteName.player);
              },
              onUnlock: () {},
            ),
          );
        },
      ),
    );
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
    listTruth.assignAll(mode.getListTruth());
    listDare.assignAll(mode.getListDare());
  }
}
