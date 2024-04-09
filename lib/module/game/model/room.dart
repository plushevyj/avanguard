import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'room.g.dart';

@JsonSerializable()
class Room extends Equatable {
  final String? roomId;
  final String? name;
  final int? startTimestamp;
  final int? duration;

  const Room({this.roomId, this.name, this.startTimestamp, this.duration});

  @override
  List<Object?> get props => [roomId, name, startTimestamp, duration];

  factory Room.fromJson(Map<String, dynamic> map) => _$RoomFromJson(map);

  Map<String, dynamic> toJson() => _$RoomToJson(this);
}
