extension IterableStuff<T> on Iterable<T> {
  Iterable<E> mapIndexed<E>(E Function(T element, int index) f) sync* {
    var index = 0;

    for (final item in this) {
      yield f(item, index);
      index = index + 1;
    }
  }
}
