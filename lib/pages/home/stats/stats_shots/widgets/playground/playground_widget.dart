import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../../customization/pics.dart';
import '../../../../../../customization/std_colors.dart';
import '../../../../../../module/video_fragment/data/dto/video_fragment_link_dto.dart';
import '../../../../../../module/video_fragment/presentation/view/video_fragment_widget.dart';
import '../../../stats_controller.dart';
import '../../stats_shots_controller.dart';
import 'bloc/shots_playground_bloc.dart';

class PlaygroundWidget extends StatelessWidget {
  const PlaygroundWidget({Key? key}) : super(key: key);

  static const _maxX = 30;
  static const _radius = 10.0;
  static const _offset = _radius / 2;
  static const _size = 12.0;
  static final _styleM = Get.textTheme.bodyMedium?.apply(color: Colors.white);
  static final _style = Get.textTheme.bodySmall?.apply(color: Colors.white);
  static final _styleG =
      Get.textTheme.bodySmall?.apply(color: Colors.white.withOpacity(.7));

  @override
  Widget build(BuildContext context) {
    Get.find<StatsController>().getPlayground();
    final controller = Get.put(StatsShotsController());
    return OrientationBuilder(
      builder: (ctx, orientation) {
        final playgroundX = Get.width - Indents.x * 2;
        final point = playgroundX / _maxX;
        return BlocBuilder<ShotsPlaygroundBloc, ShotsPlaygroundState>(
          builder: (context, state) {
            if (state is ShotsPlaygroundInitial) {
              return const CircularProgressIndicator.adaptive();
            } else if (state is ShotsPlaygroundGot) {
              final weAtHome = state.playground.weAtHome;
              final homeEvents = state.playground.home;
              final awayEvents = state.playground.away;
              return Obx(
                () => Stack(
                  children: [
                    SvgPicture.asset(Pics.playground, width: playgroundX),
                    // todo refactor this!
                    if (homeEvents[4].items != null &&
                        controller.filters
                            .contains(PlaygroundFilter.unsuccessfulAttempt))
                      ...homeEvents[4]
                          .items!
                          .map((item) => Positioned(
                                left: item.posY * point - _offset,
                                top: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Неудачная попытка',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.primary.shade300
                                        : StdColors.blue.shade300,
                                    foregroundColor: Colors.white,
                                    child: const Icon(Icons.close, size: _size),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (homeEvents[1].items != null &&
                        controller.filters.contains(PlaygroundFilter.shotWide))
                      ...homeEvents[1]
                          .items!
                          .map((item) => Positioned(
                                left: item.posY * point - _offset,
                                top: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Бросок мимо',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.primary.shade300
                                        : StdColors.blue.shade300,
                                    foregroundColor: Colors.white,
                                    child: const Icon(Icons.close, size: _size),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (homeEvents[2].items != null &&
                        controller.filters
                            .contains(PlaygroundFilter.blockedShot))
                      ...homeEvents[2]
                          .items!
                          .map((item) => Positioned(
                                left: item.posY * point - _offset,
                                top: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Заблокированный бросок',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.primary.shade300
                                        : StdColors.blue.shade300,
                                    foregroundColor: Colors.white,
                                    child: const Icon(
                                      Icons.lock_outlined,
                                      size: _size,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (homeEvents[0].items != null &&
                        controller.filters
                            .contains(PlaygroundFilter.shotOnGoal))
                      ...homeEvents[0]
                          .items!
                          .map((item) => Positioned(
                                left: item.posY * point - _offset,
                                top: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Бросок в створ',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.primary
                                        : StdColors.blue,
                                    foregroundColor: Colors.white,
                                    child: Text(
                                      'S',
                                      style: _style,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (homeEvents[3].items != null &&
                        controller.filters.contains(PlaygroundFilter.goal))
                      ...homeEvents[3]
                          .items!
                          .map((item) => Positioned(
                                left: item.posY * point - _offset,
                                top: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Гол',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.primary.shade700
                                        : StdColors.blue.shade700,
                                    foregroundColor: Colors.white,
                                    child: Text(
                                      'G',
                                      style: _style,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),

                    // away events
                    if (awayEvents[4].items != null &&
                        controller.filters
                            .contains(PlaygroundFilter.unsuccessfulAttempt))
                      ...awayEvents[4]
                          .items!
                          .map((item) => Positioned(
                                right: item.posY * point - _offset,
                                bottom: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Неудачная попытка',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.blue.shade300
                                        : StdColors.primary.shade300,
                                    foregroundColor: Colors.white,
                                    child: const Icon(Icons.close, size: _size),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (awayEvents[1].items != null &&
                        controller.filters.contains(PlaygroundFilter.shotWide))
                      ...awayEvents[1]
                          .items!
                          .map((item) => Positioned(
                                right: item.posY * point - _offset,
                                bottom: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Бросок мимо',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.blue.shade300
                                        : StdColors.primary.shade300,
                                    foregroundColor: Colors.white,
                                    child: const Icon(Icons.close, size: _size),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (awayEvents[2].items != null &&
                        controller.filters
                            .contains(PlaygroundFilter.blockedShot))
                      ...awayEvents[2]
                          .items!
                          .map((item) => Positioned(
                                right: item.posY * point - _offset,
                                bottom: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Заблокированный бросок',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.blue.shade300
                                        : StdColors.primary.shade300,
                                    foregroundColor: Colors.white,
                                    child: const Icon(
                                      Icons.lock_outlined,
                                      size: _size,
                                    ),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (awayEvents[0].items != null &&
                        controller.filters
                            .contains(PlaygroundFilter.shotOnGoal))
                      ...awayEvents[0]
                          .items!
                          .map((item) => Positioned(
                                right: item.posY * point - _offset,
                                bottom: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Бросок в створ',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.blue
                                        : StdColors.primary,
                                    foregroundColor: Colors.white,
                                    child: Text('S', style: _style),
                                  ),
                                ),
                              ))
                          .toList(),
                    if (awayEvents[3].items != null &&
                        controller.filters.contains(PlaygroundFilter.goal))
                      ...awayEvents[3]
                          .items!
                          .map((item) => Positioned(
                                right: item.posY * point - _offset,
                                bottom: item.posX * point - _offset,
                                child: Tooltip(
                                  triggerMode: TooltipTriggerMode.tap,
                                  preferBelow: false,
                                  richMessage: TextSpan(
                                    text: 'Гол',
                                    style: _styleM,
                                    children: [
                                      TextSpan(
                                        text: '\n${item.player}',
                                        style: _style,
                                      ),
                                      TextSpan(
                                        text: '\nВремя: ',
                                        style: _styleG,
                                      ),
                                      TextSpan(
                                        text: item.time,
                                        style: _style,
                                      ),
                                      WidgetSpan(
                                        child: VideoFragmentWidget(
                                          VideoFragmentLinkDto.fromItem(item),
                                        ),
                                      ),
                                    ],
                                  ),
                                  child: CircleAvatar(
                                    radius: _radius,
                                    backgroundColor: weAtHome
                                        ? StdColors.blue.shade700
                                        : StdColors.primary.shade700,
                                    foregroundColor: Colors.white,
                                    child: Text('G', style: _style),
                                  ),
                                ),
                              ))
                          .toList(),
                  ],
                ),
              );
            } else if (state is ShotsPlaygroundError) {
              return Text(state.error);
            } else {
              return const SizedBox();
            }
          },
        );
      },
    );
  }
}
