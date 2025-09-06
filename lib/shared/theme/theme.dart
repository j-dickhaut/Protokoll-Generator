import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = const Color.fromRGBO(59, 174, 228, 1);
  static Color primaryLight = const Color.fromRGBO(150, 220, 255, 1);
  static Color primaryLightest = const Color.fromARGB(255, 225, 245, 255);
  static Color primaryDark = const Color.fromARGB(255, 11, 73, 112);
  static Color titleText = const Color.fromRGBO(255, 255, 255, 1);
  static Color bodyText = const Color.fromRGBO(20, 20, 20, 1);
}

//custom Theme
ThemeData primaryTheme = ThemeData(
  //color seed is the color, of the cuno logo
  colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),

  //scaffold
  scaffoldBackgroundColor: AppColor.primaryLight,

  //appBar Theme
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.primaryColor,
    surfaceTintColor: Colors.transparent,
    elevation: 0.0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(bottom: Radius.circular(8)),
    ),
  ),

  textTheme: TextTheme(
    titleMedium: TextStyle(color: AppColor.titleText, fontSize: 26),
    labelMedium: TextStyle(
      color: AppColor.titleText,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      color: AppColor.bodyText,
      fontSize: 22,
      fontWeight: FontWeight.w600,
    ),
    bodyLarge: TextStyle(
      color: AppColor.bodyText,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
  ),
);
