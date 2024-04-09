import 'package:get/get.dart';

import '../../../../auth/auth_controller.dart';
import '../model/players_lines.dart';
import '../repository/line_repository.dart';

class LineController extends GetxController {
  var lineIndex = 0.obs;
  var isLoaded = false.obs;
  final groupId = Get.find<AuthController>().account.value?.group?.id;

  final lines = Rxn<PlayersLines>();
  final line = Rxn<Line>();
  final Rx<String> str = ''.obs;

  @override
  void onInit() {
    const LineRepository().getLines(groupId ?? '-').then((value) {
      lines.value = value;
      isLoaded.toggle();
    });
    super.onInit();
  }
}
