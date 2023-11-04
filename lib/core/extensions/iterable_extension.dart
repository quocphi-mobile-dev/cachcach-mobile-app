extension IterableExtension<E> on Iterable<E> {
  E? firstWhereOrNull(bool test(E element)) {
    try {
      return firstWhere(test);
    } catch (e) {
      return null;
    }
  }

  E? firstOrNull() {
    try {
      return first;
    } catch (e) {
      return null;
    }
  }
}
