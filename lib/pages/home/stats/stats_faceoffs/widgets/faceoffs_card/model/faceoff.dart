import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faceoff.g.dart';

@JsonSerializable()
class Faceoff extends Equatable {
  final String homeTeamName;
  final String awayTeamName;
  final int home;
  final int away;
  final double homePercent;
  final double awayPercent;
  final String DZ;
  final String OZ;
  final bool weAtHome;
  final String homeTeamLogo;
  final String awayTeamLogo;

  const Faceoff({
    required this.homeTeamName,
    required this.awayTeamName,
    required this.home,
    required this.away,
    required this.homePercent,
    required this.awayPercent,
    required this.DZ,
    required this.OZ,
    required this.weAtHome,
    required this.homeTeamLogo,
    required this.awayTeamLogo,
  });

  @override
  List<Object> get props => [
        homeTeamName,
        awayTeamName,
        home,
        away,
        homePercent,
        awayPercent,
        DZ,
        OZ,
        weAtHome,
        homeTeamLogo,
        awayTeamLogo,
      ];

  factory Faceoff.fromJson(Map<String, dynamic> map) =>
      _$FaceoffFromJson(map);

  Map<String, dynamic> toJson() => _$FaceoffToJson(this);
}
