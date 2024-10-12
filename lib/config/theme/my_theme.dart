import 'package:flutter/material.dart';
import 'package:quran_app/core/colors_manger.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData()),
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: ColorsManger.goldColor,
          showUnselectedLabels: false,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 30)),
      dividerColor: ColorsManger.goldColor,
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: ColorsManger.goldColor.withOpacity(0.7),
        elevation: 18,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      textTheme: TextTheme(
        headlineMedium: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w500,
            color: ColorsManger.textColor),
        bodyMedium: const TextStyle(
            fontSize: 21, fontWeight: FontWeight.bold, color: Colors.white),
        titleMedium: const TextStyle(
            fontSize: 21, fontWeight: FontWeight.bold, color: Colors.black),
      ));
  static ThemeData darkTheme = ThemeData(
    appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData()),
  );
}
