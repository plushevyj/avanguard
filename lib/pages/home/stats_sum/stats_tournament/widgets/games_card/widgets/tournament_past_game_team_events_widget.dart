import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../../customization/pics.dart';
import '../../../../../../../customization/std_colors.dart';
import '../model/tournament_past_games.dart';

class TournamentPastGameTeamEventsWidget extends StatelessWidget {
  final MKCTablePagePastGamesGamesHalfGoalsDto events;
  final String logo;

  const TournamentPastGameTeamEventsWidget(
    this.events,
    this.logo, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (events.asIterable.isEmpty) return const SizedBox();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: Indents.y,
        vertical: Indents.x,
      ),
      child: SizedBox(
        width: 244,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(logo, width: 30, height: 30),
            const Gap(Indents.internal),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: events.asIterable
                  .map(
                    (e) => Row(
                      children: [
                        SvgPicture.asset(
                          Pics.hockeyPuck,
                          width: 16,
                          height: 16,
                        ),
                        const Gap(Indents.internal),
                        SizedBox(width: 55, child: Text(e.time)),
                        Text('${e.playerLastName} ${e.playerFirstName[0]}.'),
                      ],
                    ),
                  )
                  .toList(growable: false),
            ),
          ],
        ),
      ),
    );
  }
}
