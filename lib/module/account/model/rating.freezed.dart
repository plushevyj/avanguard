// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  String? get rating => throw _privateConstructorUsedError;
  String? get gameRating => throw _privateConstructorUsedError;
  String? get estimateRating => throw _privateConstructorUsedError;
  int? get physicalRating => throw _privateConstructorUsedError;
  String? get statisticRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call(
      {String? rating,
      String? gameRating,
      String? estimateRating,
      int? physicalRating,
      String? statisticRating});
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? gameRating = freezed,
    Object? estimateRating = freezed,
    Object? physicalRating = freezed,
    Object? statisticRating = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      gameRating: freezed == gameRating
          ? _value.gameRating
          : gameRating // ignore: cast_nullable_to_non_nullable
              as String?,
      estimateRating: freezed == estimateRating
          ? _value.estimateRating
          : estimateRating // ignore: cast_nullable_to_non_nullable
              as String?,
      physicalRating: freezed == physicalRating
          ? _value.physicalRating
          : physicalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      statisticRating: freezed == statisticRating
          ? _value.statisticRating
          : statisticRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RatingImplCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$RatingImplCopyWith(
          _$RatingImpl value, $Res Function(_$RatingImpl) then) =
      __$$RatingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? rating,
      String? gameRating,
      String? estimateRating,
      int? physicalRating,
      String? statisticRating});
}

/// @nodoc
class __$$RatingImplCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$RatingImpl>
    implements _$$RatingImplCopyWith<$Res> {
  __$$RatingImplCopyWithImpl(
      _$RatingImpl _value, $Res Function(_$RatingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? gameRating = freezed,
    Object? estimateRating = freezed,
    Object? physicalRating = freezed,
    Object? statisticRating = freezed,
  }) {
    return _then(_$RatingImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      gameRating: freezed == gameRating
          ? _value.gameRating
          : gameRating // ignore: cast_nullable_to_non_nullable
              as String?,
      estimateRating: freezed == estimateRating
          ? _value.estimateRating
          : estimateRating // ignore: cast_nullable_to_non_nullable
              as String?,
      physicalRating: freezed == physicalRating
          ? _value.physicalRating
          : physicalRating // ignore: cast_nullable_to_non_nullable
              as int?,
      statisticRating: freezed == statisticRating
          ? _value.statisticRating
          : statisticRating // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RatingImpl implements _Rating {
  const _$RatingImpl(
      {this.rating,
      this.gameRating,
      this.estimateRating,
      this.physicalRating,
      this.statisticRating});

  factory _$RatingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RatingImplFromJson(json);

  @override
  final String? rating;
  @override
  final String? gameRating;
  @override
  final String? estimateRating;
  @override
  final int? physicalRating;
  @override
  final String? statisticRating;

  @override
  String toString() {
    return 'Rating(rating: $rating, gameRating: $gameRating, estimateRating: $estimateRating, physicalRating: $physicalRating, statisticRating: $statisticRating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RatingImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.gameRating, gameRating) ||
                other.gameRating == gameRating) &&
            (identical(other.estimateRating, estimateRating) ||
                other.estimateRating == estimateRating) &&
            (identical(other.physicalRating, physicalRating) ||
                other.physicalRating == physicalRating) &&
            (identical(other.statisticRating, statisticRating) ||
                other.statisticRating == statisticRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rating, gameRating,
      estimateRating, physicalRating, statisticRating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      __$$RatingImplCopyWithImpl<_$RatingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RatingImplToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {final String? rating,
      final String? gameRating,
      final String? estimateRating,
      final int? physicalRating,
      final String? statisticRating}) = _$RatingImpl;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$RatingImpl.fromJson;

  @override
  String? get rating;
  @override
  String? get gameRating;
  @override
  String? get estimateRating;
  @override
  int? get physicalRating;
  @override
  String? get statisticRating;
  @override
  @JsonKey(ignore: true)
  _$$RatingImplCopyWith<_$RatingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
