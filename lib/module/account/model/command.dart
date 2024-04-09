import 'package:freezed_annotation/freezed_annotation.dart';

part 'command.g.dart';

part 'command.freezed.dart';

@freezed
class Command with _$Command {
  const factory Command({
    String? id,
    String? startYear,
    String? endYear,
    String? name,
  }) = _Command;

  factory Command.fromJson(Map<String, dynamic> map) => _$CommandFromJson(map);
}
