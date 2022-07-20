import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    backgroundColor: bodyBg,
    scaffoldBackgroundColor: scafflodBackgroundColor,
    appBarTheme: const AppBarTheme(
      // backgroundColor: appBarColor,
      // foregroundColor: Colors.black,
      // systemOverlayStyle: SystemUiOverlayStyle(),
      // shadowColor: OroonaPalette.yellow,
      elevation: 0.0,
      // shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //         bottomLeft: Radius.circular(12),
      //         bottomRight: Radius.circular(12))),
    ),
    cardTheme: const CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    scrollbarTheme: const ScrollbarThemeData().copyWith(
      thumbColor: MaterialStateProperty.all(appBarColor),
      thickness: MaterialStateProperty.all(2.5),
      radius: const Radius.circular(10.0),
    ),

    buttonTheme: const ButtonThemeData().copyWith(buttonColor: Colors.teal.shade100),
    splashColor: appBarColor,
    brightness: Brightness.light,
    fontFamily: "Lato",
    primaryColor: appBarColor,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: appBarColor, //thereby
    ),
    colorScheme: ColorScheme.fromSwatch(
      accentColor: appBarColor.withOpacity(0.2), // but now it should be declared like this
    ).copyWith(secondary: appBarColor),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(overlayColor: MaterialStateProperty.all(appBarColor.withOpacity(0.2))),
    ),
    // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: OroonaPalette.yellow10),
  );
  static final dark = ThemeData.dark().copyWith(
    backgroundColor: Colors.black,
  );

  static const MaterialColor yellow = MaterialColor(
    _bluePrimaryYellowValue,
    <int, Color>{
      100: Color(_bluePrimaryYellowValue),
      10: Color(0xFFFFE100),
      20: Color(0xFFFFD600),
      30: Color(0xFFFEBF00),
    },
  );

  static const int _bluePrimaryYellowValue = 0xFFFFC107;

  static const double appbarActionIconSize = 25.0;
  static const Color appBarColor = Color.fromARGB(255, 21, 212, 165);
  static const Color scafflodBackgroundColor = Color(0xffF8F8F8);
  static const Color iconColor = Color(0xff0051CA);
  static const double kDefaultPadding = 14;
  static const int _quickSilver = 0xFFA3A3A3;
  static const MaterialColor quickSilver = MaterialColor(
    _quickSilver,
    <int, Color>{
      500: Color(_quickSilver),
    },
  );
  // static const wCultured = Color(0xFFF5F5F5);
  static const wCultured = contBg;
  static const eerieBlack = Color(0xFF262626);
  static const footer = Color(0xFF333333);
  static const contBg = Color(0xFFFFFFFF);
  static const bodyBg = Color(0xFFf6f4f1);
  static const header = Color(0xFFffd700);
  static const Color boxShadow = Color(0x7EE2E2E2);
  static final List<BoxShadow> shadowList = [
    BoxShadow(color: Colors.grey[300]!, blurRadius: 30, offset: Offset(0, 10))
  ];
}
