import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../customization/std_colors.dart';
import '../../../../../widgets/buttons/button.dart';
import 'match_picker_controller.dart';
import 'match_picker_dialog.dart';
import 'widgets/matches_count_row.dart';

class MatchPicker extends StatelessWidget {
  const MatchPicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(MatchPickerController()).init();
    return Container(
      padding: const EdgeInsets.all(Indents.x),
      decoration: StdDecor.card,
      child: Column(
        children: [
          const MatchesCountRow(),
          const Gap(Indents.x),
          SizedBox(
            width: double.infinity,
            child: Button(
              onTap: () => showDialog(
                context: context,
                builder: (context) => const MatchPickerDialog(),
              ),
              text: 'Выбор матчей',
            ),
          ),
        ],
      ),
    );
  }
}
