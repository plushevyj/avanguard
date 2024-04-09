import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'content_tab.freezed.dart';

part 'content_tab.g.dart';

@Freezed()
class ContentTab with _$ContentTab {
  const factory ContentTab({required String name, required String slug}) =
      _ContentTab;

  factory ContentTab.fromJson(Map<String, dynamic> json) =>
      _$ContentTabFromJson(json);
}
