import 'package:cachcach/app/modules/play/select_mode/card/select_mode_card.dart';
import 'package:cachcach/app/modules/play/select_mode/model/mode.dart';
import 'package:cachcach/app/modules/play/select_mode/model/select_mode_model.dart';
import 'package:cachcach/routes/routes.dart';
import 'package:get/get.dart';

class SelectModeController extends GetxController {
  RxInt pageSelected = 0.obs;
  RxList<SelectModeModel> listCard = RxList([]);

  @override
  void onReady() {
    super.onReady();
    listCard.assignAll(List.generate(Mode.values.length, (index) {
      final mode = Mode.values[index];
      return SelectModeModel(
        isLock: mode.isLock(),
        card: SelectModeCard(
          title: mode.getTitle(),
          totalCards: mode.getTotalCard(),
          image: mode.getImage(),
          label: mode.getLabel(),
          guideText: mode.getGuideText(),
          showIconMovie: mode.isLock(),
          onPlay: () {
            Get.toNamed(RouteName.player);
          },
        ),
      );
    }));
  }
}
