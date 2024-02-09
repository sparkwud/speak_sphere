import 'package:flutter/material.dart';

AppColors get appColors => AppColors();

const Color kPrimaryColor = Color(0xffFF7562);
const Color scaffoldBg = Color(0xFFDEDECE);
const Color kSecondaryColor = Color(0xff650C01);
const Color containerBgColor = Color(0xff908A89);
const Color containerBgColor1 = Color(0xFFC57B72);
const Color containerBgColor2 = Color(0xFFFFBFB6);
const Color kBlack = Colors.black;
const Color kWhite = Colors.white;

const Color kText1Color = Color(0xFF908989);
const Color kText2Color = Color(0xFF743026);
const Color kText3Color = Color(0xFF616161);
const Color kBorderColor = Color(0x7F650C01);
const Color kBorderColor1 = Color(0xB2650C01);
const Color kBorderColor2 = Color(0x7F908989);

const Color kBg1 = Color(0xffE16723);
const Color kBg2 = Color(0xffCB9937);

ColorScheme get colorScheme => const ColorScheme.light(
      // Primary colors
      primary: Color(0XFF0F2B0B),
      primaryContainer: Color(0XFF7D7D7D),
      secondaryContainer: Color(0XFF212121),

      // Error colors
      errorContainer: Color(0XFFE50000),
      onErrorContainer: Color(0XFFFFFFFF),

      // On colors(text colors)
      onPrimary: Color(0X1EFACC15),
      onPrimaryContainer: Color(0XFF001739),
      onSecondaryContainer: Color(0XFFC3C2BE),
    );

/// Class containing custom colors for a primary theme.
class AppColors {
  // Amber
  Color get amber700 => const Color(0XFFFF9C01);
  Color get amber70001 => const Color(0XFFFFA300);
  Color get amberA400 => const Color(0XFFFFCB05);

  // Beige
  Color get beige => const Color(0xFFEDF2DC);

  // Black
  static const black100 = Color(0xFF161F1C);
  Color get black900 => const Color(0XFF071018);
  Color get black90001 => const Color(0XFF000000);

  // Blue
  Color get blue900 => const Color(0XFF133BB7);
  // Color get blue50

  // BlueGray
  Color get blueGray200 => const Color(0XFFB0B9C1);
  Color get blueGray300 => const Color(0XFFA7A9B7);
  Color get blueGray50 => const Color(0XFFEBEFF1);
  Color get blueGray900 => const Color(0XFF112534);
  Color get blueGray50033 => const Color(0X33637381);
  Color get blueGray5001 => const Color(0XFFF1F0F3);
  Color get blueGray800 => const Color(0XFF363D4E);
  Color get blueGray90001 => const Color(0XFF373737);
  Color get blueGray90002 => const Color(0XFF1C274C);
}
