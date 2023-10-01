import 'package:cachcach/core/theme/colors.dart';
import 'package:cachcach/core/theme/images.dart';
import 'package:cachcach/core/utils/constant.dart';
import 'package:flutter/material.dart';

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

  int getPrice() {
    switch (this) {
      case Mode.classic:
        return 0;
      case Mode.spicy:
        return 0;
      case Mode.crazy:
        return 129000;
      case Mode.nightmare:
        return 149000;
      case Mode.xxx:
        return 169000;
      case Mode.bozzy:
        return 189000;
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

  Color? getBackgroundColor() {
    switch (this) {
      case Mode.nightmare:
        return AppColors.darkCoral;
      case Mode.xxx:
        return AppColors.pinkFlamingo;
      default:
        return null;
    }
  }

  String getGuideText() {
    switch (this) {
      case Mode.classic:
        return "Bao gồm các thẻ bài nội dung vui nhộn nhưng cũng không kém phần hấp dẫn phù hợp với những cặp đôi mới quen nhau mong muốn tìm hiểu nhau sâu hơn.";
      case Mode.spicy:
        return "Bao gồm các thẻ bài nội dung vui nhộn nhưng cũng không kém phần hấp dẫn phù hợp với những cặp đôi mới quen nhau mong muốn tìm hiểu nhau sâu hơn.";
      case Mode.crazy:
        return "Bao gồm các thẻ bài nội dung vui nhộn nhưng cũng không kém phần hấp dẫn phù hợp với những cặp đôi mới quen nhau mong muốn tìm hiểu nhau sâu hơn.";
      case Mode.nightmare:
        return "Bao gồm các thẻ bài nội dung vui nhộn nhưng cũng không kém phần hấp dẫn phù hợp với những cặp đôi mới quen nhau mong muốn tìm hiểu nhau sâu hơn.";
      case Mode.xxx:
        return "Bao gồm các thẻ bài nội dung vui nhộn nhưng cũng không kém phần hấp dẫn phù hợp với những cặp đôi mới quen nhau mong muốn tìm hiểu nhau sâu hơn.";
      case Mode.bozzy:
        return "Bao gồm các thẻ bài nội dung vui nhộn nhưng cũng không kém phần hấp dẫn phù hợp với những cặp đôi mới quen nhau mong muốn tìm hiểu nhau sâu hơn.";
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
