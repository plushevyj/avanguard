import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../../customization/std_colors.dart';
import '../../../../widgets/filter_chip_widget.dart';
import '../../../../widgets/buttons/filters_button.dart';
import 'stats_shots_controller.dart';
import 'stats_shots_filters/stats_shots_filters_page.dart';
import 'widgets/players_filter/players_filter_widget.dart';
import 'widgets/playground/bloc/shots_playground_bloc.dart';
import 'widgets/playground/playground_widget.dart';
import 'widgets/shots_card/shots_card.dart';

class StatsShotsPage extends StatelessWidget {
  const StatsShotsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final c = Get.put(StatsShotsController());
    return PageStorage(
      bucket: c.bucket,
      child: GestureDetector(
        onTap: c.playersFilterController.collapse,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(Indents.x),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FiltersButton(
                onTap: () => Get.to(() => const StatsShotsFiltersPage()),
              ),
              const SizedBox(height: 20),
              const ShotsCard(),
              const SizedBox(height: 44),
              PlayersFilterWidget(c.playersFilterController),
              const SizedBox(height: Indents.y),
              const _ShotsFilter(),
              const Divider(height: 40),
              const SizedBox(height: 4),
              const _PlaygroundsLegendRow(),
              const SizedBox(height: Indents.y),
              Center(
                child: Text(
                  'зона атаки',
                  style: Get.textTheme.bodyLarge?.apply(
                    color: Colors.black.withOpacity(.72),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const PlaygroundWidget(),
              const SizedBox(height: 8),
              Center(
                child: Text(
                  'зона защиты',
                  style: Get.textTheme.bodyLarge?.apply(
                    color: Colors.black.withOpacity(.72),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const _indent = 4.0;

class _ShotsFilter extends StatelessWidget {
  const _ShotsFilter({Key? key}) : super(key: key);

  static const _radius = 6.0;
  static const _size = _radius * 2;
  static const _iconBackgroundColor = Color(0xFF7A7A7A);

  static final _buttonsView = [
    const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: _radius,
          backgroundColor: _iconBackgroundColor,
          foregroundColor: Colors.white,
          child: FittedBox(
            child: Text('G'),
          ),
        ),
        SizedBox(width: _indent),
        Text('голы'),
      ],
    ),
    const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: _radius,
          backgroundColor: _iconBackgroundColor,
          foregroundColor: Colors.white,
          child: FittedBox(
            child: Text('S'),
          ),
        ),
        SizedBox(width: _indent),
        Text('броски в створ'),
      ],
    ),
    const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: _radius,
          backgroundColor: _iconBackgroundColor,
          foregroundColor: Colors.white,
          child: Icon(Icons.lock_outlined, size: 7),
        ),
        SizedBox(width: _indent),
        Text('заблокирован.'),
      ],
    ),
    const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: _radius,
          backgroundColor: _iconBackgroundColor,
          foregroundColor: Colors.white,
          child: Icon(Icons.close, size: _size),
        ),
        SizedBox(width: _indent),
        Text('броски мимо'),
      ],
    ),
    const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: _radius,
          backgroundColor: _iconBackgroundColor,
          foregroundColor: Colors.white,
          child: Icon(Icons.close, size: _size),
        ),
        SizedBox(width: _indent),
        Text('неудачная попытка'),
      ],
    ),
  ];

  static final _buttons =
      Map.fromIterables(_buttonsView, PlaygroundFilter.values);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(StatsShotsController());
    return Obx(
      () => Wrap(
        spacing: 12,
        children: [
          FilterChipWidget(
            isSelected: controller.allFiltersSelected,
            onSelected: controller.allTap,
            label: const Text('все  броски'),
          ),
          ..._buttons.entries
              .map((e) => FilterChipWidget(
                    isSelected: controller.isSelected(e.value),
                    label: e.key,
                    onSelected: (_) => controller.filterTap(e.value),
                  ))
              .toList(),
        ],
      ),
    );
  }
}

class _PlaygroundsLegendRow extends StatelessWidget {
  const _PlaygroundsLegendRow({Key? key}) : super(key: key);

  static const _radius = 4.0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShotsPlaygroundBloc, ShotsPlaygroundState>(
      builder: (context, state) {
        if (state is ShotsPlaygroundInitial) {
          return const CircularProgressIndicator.adaptive();
        } else if (state is ShotsPlaygroundGot) {
          return Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: StdColors.primary.shade300,
                      radius: _radius,
                    ),
                    const SizedBox(width: _indent),
                    const CircleAvatar(
                      backgroundColor: StdColors.primary,
                      radius: _radius,
                    ),
                    const SizedBox(width: _indent),
                    CircleAvatar(
                      backgroundColor: StdColors.primary.shade700,
                      radius: _radius,
                    ),
                    Text(' - наша команда;', style: Get.textTheme.bodyMedium),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: StdColors.blue.shade300,
                      radius: _radius,
                    ),
                    const SizedBox(width: _indent),
                    CircleAvatar(
                      backgroundColor: StdColors.blue.shade500,
                      radius: _radius,
                    ),
                    const SizedBox(width: _indent),
                    CircleAvatar(
                      backgroundColor: StdColors.blue.shade700,
                      radius: _radius,
                    ),
                    Text(' - соперник', style: Get.textTheme.bodyMedium),
                  ],
                ),
              ),
            ],
          );
        } else if (state is ShotsPlaygroundError) {
          return Text(state.error);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
