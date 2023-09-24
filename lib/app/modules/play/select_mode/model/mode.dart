import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/utils/constant.dart';

enum Mode { classic, spicy, crazy, nightmare, xxx, bozzy }

extension ModeExtension on Mode {
  String getImage() {
    switch (this) {
      case Mode.classic:
        return AppImages.imgClassic;
      case Mode.spicy:
        return AppImages.imgClassic;
      case Mode.crazy:
        return AppImages.imgClassic;
      case Mode.nightmare:
        return AppImages.imgClassic;
      case Mode.xxx:
        return AppImages.imgClassic;
      case Mode.bozzy:
        return AppImages.imgClassic;
    }
  }

  bool isLock() {
    switch (this) {
      case Mode.classic:
        return false;
      case Mode.spicy:
        return false;
      case Mode.crazy:
        return true;
      case Mode.nightmare:
        return true;
      case Mode.xxx:
        return true;
      case Mode.bozzy:
        return true;
    }
  }

  String getTitle() {
    switch (this) {
      case Mode.classic:
        return "CLASSIC";
      case Mode.spicy:
        return "SPICY";
      case Mode.crazy:
        return "CRAZY";
      case Mode.nightmare:
        return "NIGHTMARE";
      case Mode.xxx:
        return "XXX";
      case Mode.bozzy:
        return "BOZZY";
    }
  }

  String getLabel() {
    switch (this) {
      case Mode.classic:
        return "Soft";
      case Mode.spicy:
        return "Hot";
      case Mode.crazy:
        return "Hard";
      case Mode.nightmare:
        return "Extreme";
      case Mode.xxx:
        return "Sexy";
      case Mode.bozzy:
        return "White collar";
    }
  }

  String getGuideText() {
    switch (this) {
      case Mode.classic:
        return "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.";
      case Mode.spicy:
        return "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.";
      case Mode.crazy:
        return "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.";
      case Mode.nightmare:
        return "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.";
      case Mode.xxx:
        return "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.";
      case Mode.bozzy:
        return "Hi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.HiHi>HI.Hi.";
    }
  }

  int getTotalCard() {
    return getListTruth().length + getListDare().length;
  }

  List<String> getListTruth() {
    switch (this) {
      case Mode.classic:
        return content;
      case Mode.spicy:
        return content;
      case Mode.crazy:
        return content;
      case Mode.nightmare:
        return content;
      case Mode.xxx:
        return content;
      case Mode.bozzy:
        return content;
    }
  }

  List<String> getListDare() {
    switch (this) {
      case Mode.classic:
        return content;
      case Mode.spicy:
        return content;
      case Mode.crazy:
        return content;
      case Mode.nightmare:
        return content;
      case Mode.xxx:
        return content;
      case Mode.bozzy:
        return content;
    }
  }
}
