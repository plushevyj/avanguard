import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/utils/role_translator.dart';
import 'group.dart';

part 'player_account.freezed.dart';

part 'player_account.g.dart';

@freezed
class PlayerAccount with _$PlayerAccount {
  const factory PlayerAccount({
    @Default('NO objectId !!!') String objectId,
    // List<Command>? previousCommands,
    // List<String>? schoolsIds,
    // Map<String, dynamic>? extraStudentInfo,
    // List<StudentStatsItem>? studentStatsItems,
    // List? coachingCareers,
    // List? playingCareers,
    // List? achievements,
    // List? graduates,
    // List? retrainings,
    @Default('-') String firstName,
    @Default('-') String lastName,
    String? middleName,
    @Default('-') String phone,
    // String? agent,
    @Default('-') String playerNumber,
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
    @JsonKey(fromJson: RoleTranslator.toRu, toJson: RoleTranslator.toEn)
    String? hockeyRole,
    // String? hand,
    // int? weight,
    // int? height,
    // bool? participationInTheNationalTeam,
    // String? citizenshipId,
    // String? countryId,
    // String? cityOfBirth,
    String? email,
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
    String? avatar,
    // String? icebergId,
    // String? nerosoftId,
    // Rating? rating,
    // String? status,
    Group? group,
    // String? instatId,
    // School? school,
    // int? avangardId,
    required String sessionToken,
  }) = _PlayerAccount;

  factory PlayerAccount.fromJson(Map<String, dynamic> map) =>
      _$PlayerAccountFromJson(map);
}
