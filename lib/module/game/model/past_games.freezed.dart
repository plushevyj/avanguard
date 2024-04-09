// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'past_games.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PastGames _$PastGamesFromJson(Map<String, dynamic> json) {
  return _PastGames.fromJson(json);
}

/// @nodoc
mixin _$PastGames {
  List<PastGame> get games => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  bool get isLastPages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PastGamesCopyWith<PastGames> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PastGamesCopyWith<$Res> {
  factory $PastGamesCopyWith(PastGames value, $Res Function(PastGames) then) =
      _$PastGamesCopyWithImpl<$Res, PastGames>;
  @useResult
  $Res call({List<PastGame> games, int pages, bool isLastPages});
}

/// @nodoc
class _$PastGamesCopyWithImpl<$Res, $Val extends PastGames>
    implements $PastGamesCopyWith<$Res> {
  _$PastGamesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? pages = null,
    Object? isLastPages = null,
  }) {
    return _then(_value.copyWith(
      games: null == games
          ? _value.games
          : games // ignore: cast_nullable_to_non_nullable
              as List<PastGame>,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPages: null == isLastPages
          ? _value.isLastPages
          : isLastPages // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PastGamesImplCopyWith<$Res>
    implements $PastGamesCopyWith<$Res> {
  factory _$$PastGamesImplCopyWith(
          _$PastGamesImpl value, $Res Function(_$PastGamesImpl) then) =
      __$$PastGamesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PastGame> games, int pages, bool isLastPages});
}

/// @nodoc
class __$$PastGamesImplCopyWithImpl<$Res>
    extends _$PastGamesCopyWithImpl<$Res, _$PastGamesImpl>
    implements _$$PastGamesImplCopyWith<$Res> {
  __$$PastGamesImplCopyWithImpl(
      _$PastGamesImpl _value, $Res Function(_$PastGamesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? games = null,
    Object? pages = null,
    Object? isLastPages = null,
  }) {
    return _then(_$PastGamesImpl(
      games: null == games
          ? _value._games
          : games // ignore: cast_nullable_to_non_nullable
              as List<PastGame>,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPages: null == isLastPages
          ? _value.isLastPages
          : isLastPages // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PastGamesImpl with DiagnosticableTreeMixin implements _PastGames {
  const _$PastGamesImpl(
      {required final List<PastGame> games,
      required this.pages,
      required this.isLastPages})
      : _games = games;

  factory _$PastGamesImpl.fromJson(Map<String, dynamic> json) =>
      _$$PastGamesImplFromJson(json);

  final List<PastGame> _games;
  @override
  List<PastGame> get games {
    if (_games is EqualUnmodifiableListView) return _games;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_games);
  }

  @override
  final int pages;
  @override
  final bool isLastPages;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PastGames(games: $games, pages: $pages, isLastPages: $isLastPages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PastGames'))
      ..add(DiagnosticsProperty('games', games))
      ..add(DiagnosticsProperty('pages', pages))
      ..add(DiagnosticsProperty('isLastPages', isLastPages));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PastGamesImpl &&
            const DeepCollectionEquality().equals(other._games, _games) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.isLastPages, isLastPages) ||
                other.isLastPages == isLastPages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_games), pages, isLastPages);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PastGamesImplCopyWith<_$PastGamesImpl> get copyWith =>
      __$$PastGamesImplCopyWithImpl<_$PastGamesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PastGamesImplToJson(
      this,
    );
  }
}

abstract class _PastGames implements PastGames {
  const factory _PastGames(
      {required final List<PastGame> games,
      required final int pages,
      required final bool isLastPages}) = _$PastGamesImpl;

  factory _PastGames.fromJson(Map<String, dynamic> json) =
      _$PastGamesImpl.fromJson;

  @override
  List<PastGame> get games;
  @override
  int get pages;
  @override
  bool get isLastPages;
  @override
  @JsonKey(ignore: true)
  _$$PastGamesImplCopyWith<_$PastGamesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
