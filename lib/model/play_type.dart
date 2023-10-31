enum PlayType { NORMAL, COUPLE, GROUP }

extension PlayTypeExtensions on PlayType {
  int getId() {
    if (this == PlayType.NORMAL) {
      return 1;
    }

    if (this == PlayType.COUPLE) {
      return 2;
    }

    if (this == PlayType.GROUP) {
      return 3;
    }

    return -1;
  }
}
