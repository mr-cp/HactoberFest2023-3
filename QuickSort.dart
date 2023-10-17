import 'package:starter/quicksort.dart';

void main() {
  final list = [8, 2, 10, 0, 9, 18, 9, -1, 5];
  final sorted = quicksortNaive(list);
  print(sorted);
}


List<E> quicksortNaive<E extends Comparable<dynamic>>(
  List<E> list,
) {
  // 1
  if (list.length < 2) return list;
  // 2
  final pivot = list[0];
  // 3
  final less = list.where(
    (value) => value.compareTo(pivot) < 0,
  );
  final equal = list.where(
    (value) => value.compareTo(pivot) == 0,
  );
  final greater = list.where(
    (value) => value.compareTo(pivot) > 0,
  );
  // 4
  return [
    ...quicksortNaive(less.toList()),
    ...equal,
    ...quicksortNaive(greater.toList()),
  ];
}
