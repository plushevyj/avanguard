import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'student.g.dart';

@JsonSerializable()
class Student extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  @JsonKey(fromJson: _translateToRu, toJson: _translateToEn)
  final String hockeyRole;
  final int playerNumber;
  final String? avatar;
  final int? gamesCount;

  static String _translateToRu(String en) => switch (en) {
      == 'winger' => 'Нап.',
      == 'defenseman' => 'Защ.',
      _ => en,
    };

  static String _translateToEn(String ru) => switch (ru) {
      == 'Нап.' => 'winger',
      == 'Защ.' => 'defenseman',
      _ => ru,
    };

  const Student({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.hockeyRole,
    required this.playerNumber,
    this.avatar,
    this.gamesCount,
  });

  @override
  List<Object?> get props => [
    id,
    firstName,
    lastName,
    hockeyRole,
    playerNumber,
    avatar,
    gamesCount,
  ];

  factory Student.fromJson(Map<String, dynamic> map) =>
      _$StudentFromJson(map);

  Map<String, dynamic> toJson() => _$StudentToJson(this);
}