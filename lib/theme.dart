import 'package:flutter/material.dart';

final colors = {
  "card": const Color.fromARGB(255, 37, 42, 72),
  "card-selected": const Color.fromARGB(255, 33, 150, 243),
  "text": Colors.white,
  "controls": const Color.fromARGB(255, 244, 66, 54),
  "appbar": const Color.fromARGB(255, 19, 22, 57),
  "scaffold-bg": const Color.fromARGB(255, 13, 18, 50),
  "icon-button": const Color.fromARGB(255, 13, 18, 50),
};

final themeData = ThemeData(

  appBarTheme: AppBarTheme(
    backgroundColor: colors["appbar"],
  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: colors["text"],
      fontSize: 30,
    ),
    titleMedium: TextStyle(
      color: colors["text"],
      fontSize: 25,
    ),
    titleSmall: TextStyle(
      color: colors["text"],
      fontSize: 20,
    ),

  ),
  scaffoldBackgroundColor: colors["scaffold-bg"],
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      shape: WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      backgroundColor: WidgetStatePropertyAll( colors["controls"]),
      textStyle: WidgetStatePropertyAll( TextStyle(color: colors["text"])),
    ),
  ),
  iconButtonTheme: IconButtonThemeData(
    style: ButtonStyle(
      backgroundColor: WidgetStatePropertyAll( colors["icon-button"]),
    ),
  ),
  iconTheme: IconThemeData(color: colors["text"]),
  sliderTheme: SliderThemeData(
    activeTrackColor: colors["controls"],
    inactiveTrackColor: colors["text"],
    thumbColor: colors["controls"],
    overlayColor: colors["controls"],
  ),

);