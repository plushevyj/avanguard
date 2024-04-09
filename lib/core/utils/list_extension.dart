import 'package:get/get.dart';

extension ListExtension<E> on List<E> {
  E? tryGet(int i) => i < 0 || i >= length ? null : this[i];
}

extension RxListExtension<E> on RxList<E> {
  E? tryGet(int i) => i < 0 || i >= length ? null : this[i];
}
