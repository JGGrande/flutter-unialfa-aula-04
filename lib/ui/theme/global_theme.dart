import 'package:flutter/material.dart';

ThemeData globalTheme() {
  const primaryColor = Color(0xFF12159F);
  const primaryColorDark = Color(0xFF00024E);
  const primaryColorLight = Color(0xFF3F42FF);

  final textFieldDecoration = InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: primaryColorDark),
      borderRadius: BorderRadius.circular(20)
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: primaryColorLight),
      borderRadius: BorderRadius.circular(30)
    ),
    disabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primaryColorLight),
        borderRadius: BorderRadius.circular(20)
    )
  );

  final buttonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(primaryColorDark),
      padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 28, vertical: 18)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
      )
    )
  );

  const appBarTheme = AppBarTheme(
    color: primaryColorDark,
    titleTextStyle: TextStyle(fontSize: 28, color: Colors.white),
    centerTitle: true
  );

  const textTheme = TextTheme(
    displayLarge: TextStyle(
      fontSize: 40,
      fontWeight: FontWeight.bold,
      color: primaryColorDark
    )
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    inputDecorationTheme: textFieldDecoration,
    elevatedButtonTheme: buttonTheme,
    appBarTheme: appBarTheme,
    textTheme: textTheme
  );
}