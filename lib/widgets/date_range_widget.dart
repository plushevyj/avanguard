import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../customization/std_colors.dart';

class DateRangeWidget extends StatelessWidget {
  final dynamic c;

  const DateRangeWidget(this.c, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: InkWell(
        onTap: () => c.chooseDate(),
        child: InputDecorator(
          decoration: const InputDecoration(
            labelStyle: StdStyles.labelStyle,
            labelText: 'Период',
            contentPadding: EdgeInsets.symmetric(horizontal: Indents.internal),
            border: OutlineInputBorder(),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(
                () => Text(
                  c.dateRange.isNotEmpty
                      ? '${DateFormat.yMd('ru').format(c.dateRange.first!)} - '
                          '${DateFormat.yMd('ru').format(c.dateRange.last!)}'
                      : '',
                ),
              ),
              Icon(
                Icons.calendar_today_rounded,
                color: Colors.black.withOpacity(.54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
