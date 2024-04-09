import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import 'goalkeeper.dart';

part 'goalkeepers.freezed.dart';

part 'goalkeepers.g.dart';

@Freezed()
class Goalkeepers with _$Goalkeepers {
  const factory Goalkeepers({
    required List<Goalkeeper>? names,
    required bool? weAtHome,
    required bool? winByBuls,
    required bool? winByOT,
  }) = _Goalkeepers;

  factory Goalkeepers.fromJson(Map<String, Object?> json) =>
      _$GoalkeepersFromJson(json);
}
