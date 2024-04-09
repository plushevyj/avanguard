import '../../customization/constants.dart';

abstract class RoleTranslator {
  static String toRu(String? en) => switch (en) {
        == kWinger => kRuWinger,
        == kDefenseman => kRuDefenseman,
        == kGoaltender => kRuGoaltender,
        _ => '-',
      };

  static String toEn(String? ru) => switch (ru) {
        == kRuWinger => kWinger,
        == kRuDefenseman => kDefenseman,
        == kRuGoaltender => kGoaltender,
        _ => '-',
      };

  static String oneToMany(String? one) => switch (one) {
        == kRuWinger => kRuWingers,
        == kRuDefenseman => kRuDefensemans,
        == kRuGoaltender => kRuGoaltenders,
        _ => '-',
  };
}
