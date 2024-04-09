import 'package:get/get.dart';

import '../model/skill_estimate.dart';
import '../skill_repository.dart';

class SkillController extends GetxController {
  var skillEstimates = Rxn<List<SkillEstimate>>();
  late final List<Skill?> skills;

  Future<void> skillsInitialized() async {
    await getSkillEstimateList();
    skills = skillEstimates.value?.map((e) => e.skill).toList() ?? [];
  }

  Future<void> getSkillEstimateList() async {
    skillEstimates.value = await const SkillRepository().getSkillEstimateList();
  }
}
