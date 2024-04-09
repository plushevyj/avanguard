import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../../../customization/std_colors.dart';
import '../controller/game_action_type_wrap_controller.dart';
import '../model/game_action_type_view_model.dart';

class GameActionTypeWidget extends StatelessWidget {
  final GameActionTypeViewModel type;

  const GameActionTypeWidget(this.type, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.find<GameActionTypeWrapController>();
    return GestureDetector(
      onTap: () => c.chooseActionType(type), // change color
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: type.isSelected ? StdColors.primary : const Color(0xFFEFEFEF),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: Indents.x,
              height: Indents.x,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: type.isSelected ? Colors.white : Grey.g54,
              ),
              alignment: Alignment.center,
              child: Text(type.title,
                  style: TextStyle(
                    color: type.isSelected ? StdColors.primary : Colors.white,
                    fontSize: 9,
                  )),
            ),
            const Gap(6),
            Text(
              type.name,
              style:
                  TextStyle(color: type.isSelected ? Colors.white : null),
            ),
          ],
        ),
      ),
    );
  }
}
