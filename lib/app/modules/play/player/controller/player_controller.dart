import 'package:cachcach/app/modules/play/spin/model/player_info.dart';
import 'package:get/get.dart';

class PlayerController extends GetxController {
  RxList<PlayerInfo> listPlayer = RxList([]);

  @override
  void onReady() {
    super.onReady();
    listPlayer.assignAll([PlayerInfo(), PlayerInfo()]);
  }

  List<PlayerInfo> getListPlayerSortByPoint() {
    List<PlayerInfo> list = listPlayer.map((element) => element).toList();
    list.sort((p1, p2) => p2.totalPoint.compareTo(p1.totalPoint));
    return list;
  }

  void reset() {
    for (var element in listPlayer) {
      element.reset();
    }
  }
}
