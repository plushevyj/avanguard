import 'package:flutter/material.dart';

import '../../../../../customization/std_colors.dart';
import '../model/student.dart';

class StudentCell extends StatelessWidget {
  final Student student;
  final bool isExpanded;

  const StudentCell(this.student, {required this.isExpanded, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.fade,
      softWrap: false,
      text: TextSpan(
        text: student.playerNumber.toString(),
        style: const TextStyle(color: Grey.g54),
        children: [
          if (isExpanded)
            TextSpan(
              text: ' ${student.firstName[0]}. '
                  '${student.lastName}',
              style: const TextStyle(
                color: StdColors.textColor,
              ),
            ),
        ],
      ),
    );
  }
}
