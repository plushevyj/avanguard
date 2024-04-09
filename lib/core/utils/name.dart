extension Name on String? {
  String get name => switch (this?.split(' ')) {
        [final name, final family] => '$family ${name[0]}.',
        String? single => (single?.isEmpty ?? false) ? '-' : '',
        _ => 'Unable to parse <Family N>'
      };
}
