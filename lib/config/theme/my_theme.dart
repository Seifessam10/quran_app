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
          backgroundColor: ColorsManger.lightThemeColor,
          showUnselectedLabels: false,
          elevation: 20,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 30)),
      dividerColor: ColorsManger.lightThemeColor,
      cardTheme: CardTheme(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        color: ColorsManger.lightThemeColor.withOpacity(0.7),
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
          labelMedium: TextStyle(
              fontSize: 20,
              color: ColorsManger.lightThemeColor,
              fontWeight: FontWeight.w500),
          labelSmall: TextStyle(
              color: ColorsManger.lightThemeColor,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          displayMedium: TextStyle(
              color: ColorsManger.lightThemeColor,
              fontSize: 21,
              fontWeight: FontWeight.w400)),
      indicatorColor: ColorsManger.lightThemeColor,
      bottomSheetTheme: BottomSheetThemeData(
        elevation: 10,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        ),
        showDragHandle: true,
        dragHandleColor: ColorsManger.lightThemeColor,
        backgroundColor: Colors.white,
        modalElevation: 10,
      ));
}
