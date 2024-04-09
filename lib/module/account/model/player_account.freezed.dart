// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlayerAccount _$PlayerAccountFromJson(Map<String, dynamic> json) {
  return _PlayerAccount.fromJson(json);
}

/// @nodoc
mixin _$PlayerAccount {
  String get objectId =>
      throw _privateConstructorUsedError; // List<Command>? previousCommands,
// List<String>? schoolsIds,
// Map<String, dynamic>? extraStudentInfo,
// List<StudentStatsItem>? studentStatsItems,
// List? coachingCareers,
// List? playingCareers,
// List? achievements,
// List? graduates,
// List? retrainings,
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get middleName => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError; // String? agent,
  String get playerNumber => throw _privateConstructorUsedError; // String? vk,
// String? instagram,
// String? parentType,
// String? secondRepresentativeType,
// String? familyComposition,
// String? parentsAdress,
// String? parentsWork,
// String? fb,
// String? parentSkype,
// String? secondRepresentativeSkype,
// String? agentEmail,
// String? agentPhone,
// int? birthdayTimestamp,
// int? dateJoinedAcademy,
// String? parentPhone,
// String? secondRepresentativePhone,
// String? parentEmail,
// String? secondRepresentativeEmail,
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  String? get hockeyRole => throw _privateConstructorUsedError; // String? hand,
// int? weight,
// int? height,
// bool? participationInTheNationalTeam,
// String? citizenshipId,
// String? countryId,
// String? cityOfBirth,
  String? get email =>
      throw _privateConstructorUsedError; // String? franchiseeId,
// String? userRole,
// String? schoolId,
// String? username,
// bool? passwordConfirmed,
// bool? showSubscriptions,
// DateTime? createdAt,
// DateTime? updatedAt,
// int? contractPeriod,
// bool? active,
// bool? isProspect,
  String? get avatar =>
      throw _privateConstructorUsedError; // String? icebergId,
// String? nerosoftId,
// Rating? rating,
// String? status,
  Group? get group => throw _privateConstructorUsedError; // String? instatId,
// School? school,
// int? avangardId,
  String get sessionToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlayerAccountCopyWith<PlayerAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerAccountCopyWith<$Res> {
  factory $PlayerAccountCopyWith(
          PlayerAccount value, $Res Function(PlayerAccount) then) =
      _$PlayerAccountCopyWithImpl<$Res, PlayerAccount>;
  @useResult
  $Res call(
      {String objectId,
      String firstName,
      String lastName,
      String? middleName,
      String phone,
      String playerNumber,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      String? hockeyRole,
      String? email,
      String? avatar,
      Group? group,
      String sessionToken});

  $GroupCopyWith<$Res>? get group;
}

/// @nodoc
class _$PlayerAccountCopyWithImpl<$Res, $Val extends PlayerAccount>
    implements $PlayerAccountCopyWith<$Res> {
  _$PlayerAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? phone = null,
    Object? playerNumber = null,
    Object? hockeyRole = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? group = freezed,
    Object? sessionToken = null,
  }) {
    return _then(_value.copyWith(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      playerNumber: null == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hockeyRole: freezed == hockeyRole
          ? _value.hockeyRole
          : hockeyRole // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GroupCopyWith<$Res>? get group {
    if (_value.group == null) {
      return null;
    }

    return $GroupCopyWith<$Res>(_value.group!, (value) {
      return _then(_value.copyWith(group: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerAccountImplCopyWith<$Res>
    implements $PlayerAccountCopyWith<$Res> {
  factory _$$PlayerAccountImplCopyWith(
          _$PlayerAccountImpl value, $Res Function(_$PlayerAccountImpl) then) =
      __$$PlayerAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String objectId,
      String firstName,
      String lastName,
      String? middleName,
      String phone,
      String playerNumber,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      String? hockeyRole,
      String? email,
      String? avatar,
      Group? group,
      String sessionToken});

  @override
  $GroupCopyWith<$Res>? get group;
}

/// @nodoc
class __$$PlayerAccountImplCopyWithImpl<$Res>
    extends _$PlayerAccountCopyWithImpl<$Res, _$PlayerAccountImpl>
    implements _$$PlayerAccountImplCopyWith<$Res> {
  __$$PlayerAccountImplCopyWithImpl(
      _$PlayerAccountImpl _value, $Res Function(_$PlayerAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? objectId = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? middleName = freezed,
    Object? phone = null,
    Object? playerNumber = null,
    Object? hockeyRole = freezed,
    Object? email = freezed,
    Object? avatar = freezed,
    Object? group = freezed,
    Object? sessionToken = null,
  }) {
    return _then(_$PlayerAccountImpl(
      objectId: null == objectId
          ? _value.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      middleName: freezed == middleName
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      playerNumber: null == playerNumber
          ? _value.playerNumber
          : playerNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hockeyRole: freezed == hockeyRole
          ? _value.hockeyRole
          : hockeyRole // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as Group?,
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerAccountImpl implements _PlayerAccount {
  const _$PlayerAccountImpl(
      {this.objectId = 'NO objectId !!!',
      this.firstName = '-',
      this.lastName = '-',
      this.middleName,
      this.phone = '-',
      this.playerNumber = '-',
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      this.hockeyRole,
      this.email,
      this.avatar,
      this.group,
      required this.sessionToken});

  factory _$PlayerAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerAccountImplFromJson(json);

  @override
  @JsonKey()
  final String objectId;
// List<Command>? previousCommands,
// List<String>? schoolsIds,
// Map<String, dynamic>? extraStudentInfo,
// List<StudentStatsItem>? studentStatsItems,
// List? coachingCareers,
// List? playingCareers,
// List? achievements,
// List? graduates,
// List? retrainings,
  @override
  @JsonKey()
  final String firstName;
  @override
  @JsonKey()
  final String lastName;
  @override
  final String? middleName;
  @override
  @JsonKey()
  final String phone;
// String? agent,
  @override
  @JsonKey()
  final String playerNumber;
// String? vk,
// String? instagram,
// String? parentType,
// String? secondRepresentativeType,
// String? familyComposition,
// String? parentsAdress,
// String? parentsWork,
// String? fb,
// String? parentSkype,
// String? secondRepresentativeSkype,
// String? agentEmail,
// String? agentPhone,
// int? birthdayTimestamp,
// int? dateJoinedAcademy,
// String? parentPhone,
// String? secondRepresentativePhone,
// String? parentEmail,
// String? secondRepresentativeEmail,
  @override
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  final String? hockeyRole;
// String? hand,
// int? weight,
// int? height,
// bool? participationInTheNationalTeam,
// String? citizenshipId,
// String? countryId,
// String? cityOfBirth,
  @override
  final String? email;
// String? franchiseeId,
// String? userRole,
// String? schoolId,
// String? username,
// bool? passwordConfirmed,
// bool? showSubscriptions,
// DateTime? createdAt,
// DateTime? updatedAt,
// int? contractPeriod,
// bool? active,
// bool? isProspect,
  @override
  final String? avatar;
// String? icebergId,
// String? nerosoftId,
// Rating? rating,
// String? status,
  @override
  final Group? group;
// String? instatId,
// School? school,
// int? avangardId,
  @override
  final String sessionToken;

  @override
  String toString() {
    return 'PlayerAccount(objectId: $objectId, firstName: $firstName, lastName: $lastName, middleName: $middleName, phone: $phone, playerNumber: $playerNumber, hockeyRole: $hockeyRole, email: $email, avatar: $avatar, group: $group, sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerAccountImpl &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.middleName, middleName) ||
                other.middleName == middleName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.playerNumber, playerNumber) ||
                other.playerNumber == playerNumber) &&
            (identical(other.hockeyRole, hockeyRole) ||
                other.hockeyRole == hockeyRole) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      objectId,
      firstName,
      lastName,
      middleName,
      phone,
      playerNumber,
      hockeyRole,
      email,
      avatar,
      group,
      sessionToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerAccountImplCopyWith<_$PlayerAccountImpl> get copyWith =>
      __$$PlayerAccountImplCopyWithImpl<_$PlayerAccountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerAccountImplToJson(
      this,
    );
  }
}

abstract class _PlayerAccount implements PlayerAccount {
  const factory _PlayerAccount(
      {final String objectId,
      final String firstName,
      final String lastName,
      final String? middleName,
      final String phone,
      final String playerNumber,
      @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
      final String? hockeyRole,
      final String? email,
      final String? avatar,
      final Group? group,
      required final String sessionToken}) = _$PlayerAccountImpl;

  factory _PlayerAccount.fromJson(Map<String, dynamic> json) =
      _$PlayerAccountImpl.fromJson;

  @override
  String get objectId;
  @override // List<Command>? previousCommands,
// List<String>? schoolsIds,
// Map<String, dynamic>? extraStudentInfo,
// List<StudentStatsItem>? studentStatsItems,
// List? coachingCareers,
// List? playingCareers,
// List? achievements,
// List? graduates,
// List? retrainings,
  String get firstName;
  @override
  String get lastName;
  @override
  String? get middleName;
  @override
  String get phone;
  @override // String? agent,
  String get playerNumber;
  @override // String? vk,
// String? instagram,
// String? parentType,
// String? secondRepresentativeType,
// String? familyComposition,
// String? parentsAdress,
// String? parentsWork,
// String? fb,
// String? parentSkype,
// String? secondRepresentativeSkype,
// String? agentEmail,
// String? agentPhone,
// int? birthdayTimestamp,
// int? dateJoinedAcademy,
// String? parentPhone,
// String? secondRepresentativePhone,
// String? parentEmail,
// String? secondRepresentativeEmail,
  @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
  String? get hockeyRole;
  @override // String? hand,
// int? weight,
// int? height,
// bool? participationInTheNationalTeam,
// String? citizenshipId,
// String? countryId,
// String? cityOfBirth,
  String? get email;
  @override // String? franchiseeId,
// String? userRole,
// String? schoolId,
// String? username,
// bool? passwordConfirmed,
// bool? showSubscriptions,
// DateTime? createdAt,
// DateTime? updatedAt,
// int? contractPeriod,
// bool? active,
// bool? isProspect,
  String? get avatar;
  @override // String? icebergId,
// String? nerosoftId,
// Rating? rating,
// String? status,
  Group? get group;
  @override // String? instatId,
// School? school,
// int? avangardId,
  String get sessionToken;
  @override
  @JsonKey(ignore: true)
  _$$PlayerAccountImplCopyWith<_$PlayerAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
