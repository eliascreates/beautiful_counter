import 'package:beautiful_counter/core/constants/strings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xff9f90a9);
  static Color lightPrimaryColor = const Color(0xffc2b0cf);
  static Color lightAccentColor = const Color(0xffba2872);
  static Color lightSupportColor = const Color(0xff95dcdb);

  static Color darkBackgroundColor = const Color(0xff1e0f26);
  static Color darkPrimaryColor = const Color(0xff3c1e4c);
  static Color darkAccentColor = const Color(0xffba2872);
  static Color darkSupportColor = const Color(0xff7e91b4); //7e91b4

  static final lightTheme = ThemeData(
    fontFamily: Strings.monomaniacOne,
    textTheme: GoogleFonts.kumarOneTextTheme().apply(
      bodyColor: lightSupportColor,
      displayColor: lightSupportColor,
    ),
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: lightPrimaryColor,
      secondary: lightAccentColor,
      background: lightBackgroundColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    fontFamily: 'MonomaniacOne',
    textTheme: GoogleFonts.kumarOneTextTheme().apply(
      bodyColor: darkSupportColor,
      displayColor: darkSupportColor,
    ),
    colorScheme: ColorScheme.dark(
      brightness: Brightness.dark,
      primary: darkPrimaryColor,
      secondary: darkAccentColor,
      background: darkBackgroundColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static Brightness get currentSystemBrightness =>
      PlatformDispatcher.instance.platformBrightness;

  static setStatusBarAndNavBarColor(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: themeMode == ThemeMode.light
            ? darkBackgroundColor
            : lightBackgroundColor,
        systemNavigationBarIconBrightness:
            themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent));
  }
}

extension ThemeAdditions on ThemeData {
  Color get supportColor => brightness == Brightness.light
      ? AppTheme.lightSupportColor
      : AppTheme.darkSupportColor;
}
