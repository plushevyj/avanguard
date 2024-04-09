import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Расписание', style: Get.textTheme.displayMedium),
            Text('пт, 14.05.22', style: Get.textTheme.bodyLarge),
          ],
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 300,
          child: ListView.builder(
            primary: false,
            itemCount: 4,
            itemBuilder: (ctx, i) => const _ScheduleCard(),
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: StdColors.primary.withOpacity(.15),
              foregroundColor: StdColors.primary.shade700,
            ),
            onPressed: () {},
            child: const Text('Расписание на неделю'),
          ),
        ),
      ],
    );
  }
}

class _ScheduleCard extends StatelessWidget {
  const _ScheduleCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: StdColors.border12),
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('09:00 — 10:30', style: Get.textTheme.bodySmall),
              Text('Игровой зал', style: Get.textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFF6290D4).withOpacity(.4),
                radius: 9,
                child: const Icon(
                  Icons.sports_hockey,
                  color: Colors.white,
                  size: 10,
                ),
              ),
              const SizedBox(width: 8),
              Text(
                'Тренировка по ОФП',
                style: Get.textTheme.bodyLarge?.apply(
                  color: Grey.g38,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              const Expanded(child: SizedBox()),
              const Icon(
                Icons.done_all_rounded,
                color: StdColors.border42,
                size: 18,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
