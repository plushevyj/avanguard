import 'package:get/get.dart';

import '../../pages/home/stats_sum/stats_sum_shots/widgets/stats_sum_shots_playground_filter/dto/playground_player_dto_interface.dart';

abstract class Sort {
  static int objectWithValue(a, b, RxBool isAscend) {
    if (a == null) return 1;
    if (b == null) return -1;
    return isAscend.isTrue
        ? a.value.compareTo(b.value)
        : b.value.compareTo(a.value);
  }

  static int value(a, b, RxBool isAscend) {
    if (a == null) return 1;
    if (b == null) return -1;
    return isAscend.isTrue ? a.compareTo(b) : b.compareTo(a);
  }

  /// Work only with [PlaygroundPlayerDtoInterface]
  ///
  /// Not use extends because dart unable to parse freezed class
  static List players(
    List data,
    dynamic builder,
  ) => data.map((e) => builder(e)).toList(growable: false)
      ..sort((a, b) {
        int roleCompare = (b.hockeyRole).compareTo(a.hockeyRole);
        if (roleCompare != 0) return roleCompare;
        return b.shotsCount.compareTo(a.shotsCount);
      });
}

extension SortedByRx<T> on RxList<T> {
  void sortedByRx(Comparable? Function(T e) key, RxBool isAscend) {
    isAscend.isTrue
        ? sort((a, b) {
            final (av, bv) = (key(a), key(b));
            if (av == null) return 1;
            if (bv == null) return -1;
            return bv.compareTo(av);
          })
        : sort((a, b) {
            final (av, bv) = (key(a), key(b));
            if (av == null) return 1;
            if (bv == null) return -1;
            return av.compareTo(bv);
          });
  }
}
