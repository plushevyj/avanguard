import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'goalkeeper.freezed.dart';

part 'goalkeeper.g.dart';

@Freezed()
class Goalkeeper with _$Goalkeeper {
  const factory Goalkeeper({
    required String? playerName,
    required String? playerId,
    required int? actionsCount,
  }) = _Goalkeeper;

  factory Goalkeeper.fromJson(Map<String, Object?> json) =>
      _$GoalkeeperFromJson(json);
}
