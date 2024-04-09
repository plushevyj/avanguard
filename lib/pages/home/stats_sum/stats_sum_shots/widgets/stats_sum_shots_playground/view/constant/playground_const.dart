import 'package:get/get.dart';

import '../../../../../../../../customization/std_colors.dart';

abstract class PlaygroundConst {
  static const maxX = 30; //28
  static const maxY = 60; //62
  static var x = Get.width - Indents.x * 4;

  static double get coef => x / maxX;
}

abstract class PlaygroundConstCosmetic {
  static const maxX = 28; //28
  static const maxY = 62; //62
  static var x = Get.width - Indents.x * 4;

  static double get coef => x / maxX;
}

