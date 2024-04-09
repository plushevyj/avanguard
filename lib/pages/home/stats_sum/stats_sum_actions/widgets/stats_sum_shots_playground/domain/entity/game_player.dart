import '../../../../../../../../widgets/multi_select/my_gf_multi_select.dart';

class GamePlayer implements MultiSelectPlayerInterface {
  final int avangardId;
  final String firstName;
  final String lastName;
  @override
  final String hockeyRole;
  @override
  final int shotsCount;

  GamePlayer({
    required this.avangardId,
    required this.firstName,
    required this.lastName,
    required this.hockeyRole,
    required this.shotsCount,
  }) : label = '$lastName ${firstName[0]}.';

  @override
  final String label;
}
