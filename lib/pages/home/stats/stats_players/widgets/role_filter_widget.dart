import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../stats_players_filters/stats_players_filters_controller.dart';

class RoleFilterWidget extends StatelessWidget {
  const RoleFilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsPlayersFiltersController());
    return Row(
      children: [
        InkWell(
          onTap: () => c.chooseRole(c.isWinger),
          child: Row(
            children: [
              Obx(
                () => Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.focused)) {
                      return StdColors.primary;
                    }
                    return null;
                  }),
                  value: c.isWinger.isTrue,
                  onChanged: (bool? _) => c.chooseRole(c.isWinger),
                ),
              ),
              Text('Нападающие', style: Get.textTheme.bodyMedium),
            ],
          ),
        ),
        const Gap(8),
        InkWell(
          onTap: () => c.chooseRole(c.isDefenseman),
          child: Row(
            children: [
              Obx(
                () => Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.focused)) {
                      return StdColors.primary;
                    }
                    return null;
                  }),
                  value: c.isDefenseman.isTrue,
                  onChanged: (bool? _) => c.chooseRole(c.isDefenseman),
                ),
              ),
              Text('Защитники', style: Get.textTheme.bodyMedium),
            ],
          ),
        ),
      ],
    );
  }
}
