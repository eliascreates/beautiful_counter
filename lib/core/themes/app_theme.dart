import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color lightBackgroundColor = const Color(0xfff2f2f2);
  static Color lightPrimaryColor = Colors.orange;
  static Color lightAccentColor = Colors.orangeAccent;
  static Color lightParticles = const Color(0xff393e46);

  static Color darkBackgroundColor = const Color(0xff222831);
  static Color darkPrimaryColor = Colors.deepOrange;
  static Color darkAccentColor = Colors.deepOrangeAccent;
  static Color darkParticles = const Color(0xff393e46);

  //ffa200
  // static Color darkParticles = const Color(0xff222831);

  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      brightness: Brightness.light,
      primary: lightPrimaryColor,
      secondary: lightAccentColor,
      background: lightBackgroundColor,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
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


//#f2f2f2 - White
//#f96d00 - Orange
//#393e46 - LightBlack
//#222831 - Black