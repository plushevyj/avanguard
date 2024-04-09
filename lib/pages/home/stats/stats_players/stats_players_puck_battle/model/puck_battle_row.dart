import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../model/student.dart';
import '../../model/number_and_top5.dart';

part 'puck_battle_row.g.dart';

@JsonSerializable()
class PuckBattleRow extends Equatable {
  final Student student;
  final NumberAndTop5 takeaways;
  final NumberAndTop5 takeawaysOZ;
  final NumberAndTop5 takeawaysDZ;
  final NumberAndTop5 giveaways;
  final NumberAndTop5 giveawaysOZ;
  final NumberAndTop5 giveawaysDZ;
  final NumberAndTop5 takesOZ;
  final NumberAndTop5 takesDZ;

  const PuckBattleRow({
    required this.student,
    required this.takeaways,
    required this.takeawaysOZ,
    required this.takeawaysDZ,
    required this.giveaways,
    required this.giveawaysOZ,
    required this.giveawaysDZ,
    required this.takesOZ,
    required this.takesDZ,
  });

  @override
  List<Object?> get props => [
        student,
        takeaways,
        takeawaysOZ,
        takeawaysDZ,
        giveaways,
        giveawaysOZ,
        giveawaysDZ,
        takesOZ,
        takesDZ,
      ];

  factory PuckBattleRow.fromJson(Map<String, dynamic> map) =>
      _$PuckBattleRowFromJson(map);

  Map<String, dynamic> toJson() => _$PuckBattleRowToJson(this);
}
