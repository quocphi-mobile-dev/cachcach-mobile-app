class MediaType {
  static const String typeVideo = "video";
  static const String typeImage = "image";
  static const String typeFile = "application";
}

class YearList {
  static List<String> getList(int startYear, int endYear) {
    List<String> list = [];
    for (int i = startYear; i <= endYear; i++) {
      list.add(i.toString());
    }
    return list;
  }
}
