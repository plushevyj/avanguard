abstract class StatsSumType {
  static const home = 'home';
  static const away = 'away';

  // static const all = 'all';

  static const homeLabel = 'Домашняя';
  static const awayLabel = 'Гостевая';

  // static const allLabel = 'Все';

  static const labels = [homeLabel, awayLabel];
  static const data = [home, away];
}

abstract class StatsSumGameType {
  static const win = 'win';
  static const lose = 'lose';

  // static const all = 'all';

  static const winLabel = 'Победа';
  static const loseLabel = 'Поражение';

  // static const equalsLabel = 'Все';

  static const labels = [winLabel, loseLabel];
  static const data = [win, lose];
}

abstract class StatsSumPuckDiff {
  static const one = 'one';
  static const two = 'two';
  static const three = 'three';
  static const mtt = 'mtt';

// static const all = 'all';

  static const oneLabel = '1 шайба';
  static const twoLabel = '2 шайбы';
  static const threeLabel = '3 шайбы';
  static const mttLabel = 'более 3 шайб';

// static const allLabel = 'all';

  static const labels = [oneLabel, twoLabel, threeLabel, mttLabel];
  static const data = [one, two, three, mtt];
}
