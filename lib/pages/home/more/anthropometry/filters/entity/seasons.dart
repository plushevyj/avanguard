abstract class Seasons {
  static const s2223Label = 'СЕЗОН 22/23';
  static const s2122Label = 'СЕЗОН 21/22';
  static const s2021Label = 'СЕЗОН 20/21';

  static final s2223 = DateTime(2022, 6).millisecondsSinceEpoch;
  static final s2122 = DateTime(2021, 6).millisecondsSinceEpoch;
  static final s2021 = DateTime(2020, 6).millisecondsSinceEpoch;

  static const labels = [s2223Label, s2122Label, s2021Label];
  static final data = [s2223, s2122, s2021];
}
