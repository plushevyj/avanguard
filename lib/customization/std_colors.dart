import 'package:flutter/material.dart';

abstract class StdColors {
  static const border12 = Color.fromRGBO(224, 224, 224, 1);
  static const border24 = Color.fromRGBO(194, 194, 194, 1);
  static const border42 = Color.fromRGBO(148, 148, 148, 1);
  static const innerBorder = Color.fromRGBO(218, 218, 218, 1);
  static const brown = Color.fromRGBO(151, 137, 107, 1);

  static const lightGrey = Color.fromRGBO(231, 231, 231, 1);
  static const grey = Color.fromRGBO(217, 217, 217, 1);

  static const green = Color.fromRGBO(75, 168, 73, 1);

  static const textColor = Color.fromRGBO(44, 44, 44, 1);
  static const textColorBlack70 = Color.fromRGBO(77, 77, 77, 1);

  static const _primary = 0xFFB63830;

  static const primary = MaterialColor(_primary, <int, Color>{
    50: Color.fromRGBO(219, 156, 152, 1),
    100: Color.fromRGBO(182, 56, 48, .15),
    200: Color.fromRGBO(197, 96, 89, 1),
    300: Color.fromRGBO(217, 148, 147, 1),
    400: Color.fromRGBO(189, 76, 69, 1),
    500: Color(_primary),
    600: Color.fromRGBO(146, 45, 38, 1),
    700: Color.fromRGBO(140, 26, 26, 1),
    800: Color.fromRGBO(73, 22, 19, 1),
    900: Color.fromRGBO(36, 11, 10, 1),
  });

  static const backgroundDark = Color(0xFF353535);

  static const blue = MaterialColor(0xFF1976D2, <int, Color>{
    100: Color.fromRGBO(221, 235, 248, 1),
    300: Color.fromRGBO(137, 169, 217, 1),
    400: Color.fromRGBO(117, 173, 228, 1),
    500: Color.fromRGBO(25, 118, 210, 1),
    700: Color.fromRGBO(10, 80, 150, 1),
    800: Color.fromRGBO(49, 54, 149, 1),
  });

  static const yellow = Color.fromRGBO(255, 198, 51, 1);

  static const red = Color(0xFFC05B54);

  static const shadow = Color(0x24000000);
}

abstract class Inter {
  static const _family = 'Inter';

  static const body = TextStyle(
    fontFamily: _family,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    height: 18 / 13,
    letterSpacing: -.13,
  );

  static const h1 = TextStyle(
    fontFamily: _family,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    height: 28 / 24,
  );

  static const h2 = TextStyle(
    fontFamily: _family,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 26 / 18,
  );

  static const h3 = TextStyle(
    color: Color(0xFF4D4D4D),
    // #4D4D4D
    fontFamily: _family,
    fontSize: 16.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 20 / 16,
    letterSpacing: -0.16,
  );

  static const caption = TextStyle(
    color: Color(0xFF4D4D4D),
    // #4D4D4D
    fontFamily: _family,
    fontSize: 12.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    height: 14 / 12,
    letterSpacing: .12,
  );

  static const button = TextStyle(
    fontFamily: _family,
    fontSize: 13,
    fontWeight: FontWeight.w600,
    height: 18 / 13,
    letterSpacing: .26,
  );
}

abstract class Indents {
  static const x = 16.0;
  static const y = 24.0;
  static const internal = 12.0;
}

abstract class Grey {
  static const g12 = Color.fromRGBO(235, 235, 235, 1);
  static const g14 = Color.fromRGBO(219, 219, 219, 1);
  static const g26 = Color.fromRGBO(189, 189, 189, 1);
  static const g38 = Color.fromRGBO(158, 158, 158, 1);
  static const g54 = Color.fromRGBO(117, 117, 117, 1);
  static const g68 = Color.fromRGBO(82, 82, 82, 1);
  static const g99 = Color.fromRGBO(43, 43, 43, 1);
}

abstract class StdDecor {
  static final bordered = BoxDecoration(
    borderRadius: BorderRadius.circular(4),
    border: Border.all(color: Grey.g12),
  );

  static final card = BoxDecoration(
    borderRadius: BorderRadius.circular(8),
    boxShadow: const [
      BoxShadow(
        blurRadius: 14,
        color: Color.fromRGBO(0, 0, 0, .18),
        offset: Offset(0, 1),
      ),
      BoxShadow(color: Colors.white),
    ],
  );
}

abstract class StdStyles {
  // static const

  static const labelStyle =
      TextStyle(color: Grey.g54, fontWeight: FontWeight.w500);

  // todo remove this later, because theme use Inter
  static const interBody = TextStyle(
    color: Grey.g54,
    fontSize: 11,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    height: 12 / 11,
    letterSpacing: 0.22,
  );

  static const interBody2 = TextStyle(
    color: Grey.g68,
    fontSize: 14,
    fontFamily: 'Inter',
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
    height: 20 / 14,
    letterSpacing: 0.17,
  );
}

// todo replace Proxima Nova with Inter
final theme = ThemeData(
  useMaterial3: false,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
  ),
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: StdColors.primary,
  fontFamily: 'Inter',
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStatePropertyAll(StdColors.primary.shade700),
      textStyle: const MaterialStatePropertyAll(
        TextStyle(fontWeight: FontWeight.w600),
      ),
    ),
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStatePropertyAll(0),
      textStyle: MaterialStatePropertyAll(TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        height: 14 / 13,
      )),
    ),
  ),
  textTheme: const TextTheme(
    labelLarge: TextStyle(
      color: StdColors.textColor,
      fontSize: 13,
      fontWeight: FontWeight.w600,
      height: 18 / 13,
      letterSpacing: .26,
    ),
    titleSmall: TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.w600,
      height: 16 / 13,
    ),
    titleMedium: TextStyle(
      color: StdColors.textColor,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      height: 16 / 14,
    ),
    bodyMedium: TextStyle(
      color: StdColors.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 16 / 14,
    ),
    bodyLarge: TextStyle(
      color: StdColors.textColor,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      height: 18 / 13,
    ),
    displayLarge: TextStyle(
      color: StdColors.textColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 28 / 24,
    ),
    displayMedium: TextStyle(
      color: StdColors.textColor,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 26 / 18,
    ),
    displaySmall: TextStyle(
      color: StdColors.textColor,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      height: 20 / 15,
    ),
    bodySmall: TextStyle(
      color: StdColors.textColor,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 12 / 10,
    ),
  ),
  scrollbarTheme: const ScrollbarThemeData(
    thickness: MaterialStatePropertyAll<double>(6),
    thumbColor: MaterialStatePropertyAll(Color(0x99000000)),
    radius: Radius.circular(4),
  ),
);
