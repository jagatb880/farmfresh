import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

String stageUrl = "https://missioncat.com/admin/Api/api.php?method=";
String baseURL = stageUrl;

String staticUrl = "https://missioncat.com/admin/Api/staticpage.php?spage=";
const String kFontPrimary = "Noto Sans";

// Keys
const String tokenKey = "user_token";
const String userKey = "user";
const String clockInKey = "clockin_key";

//Fonts
const double kH1Size = 25;
const double kH2Size = 20;
const double kTitleSize = 17;
const double kDescSize = 15;
const double kSmallDescSize = 12;
const double kSmallFontSize = 6;

const double kCornerRadius = 10;
const double kButtonRadius = 10;

//const FontWeight kLight = FontWeight.w300;
const FontWeight kMedium = FontWeight.w500;
const FontWeight kBold = FontWeight.w600;
const TextStyle inputFieldStyle =
    TextStyle(fontFamily: kFontPrimary, fontSize: kTitleSize - 2);
const TextStyle inputStyleGrayLabel =
    TextStyle(color: kLightgray2, fontSize: kDescSize);
const TextStyle inputErrorStyle =
    TextStyle(color: kLightgray2, fontSize: kSmallDescSize);
//Colors

const Color kPrimary = Color(0xFF1E1E1E);
const Color kLightgray4 = Color(0xFFEFF3F5);
const Color kLightgray2 = Color(0xFF969696);
const Color kWhite = Color(0xFFFFFFFF);
const Color kButtonColor = Color(0xFFC1101D);
const Color kGreen = Color(0xFF077500);

const MaterialColor kPrimaryColor = const MaterialColor(
  0xFF1E1E1E,
  const <int, Color>{
    50: const Color(0xFF1E1E1E),
    100: const Color(0xFF1E1E1E),
    200: const Color(0xFF1E1E1E),
    300: const Color(0xFF1E1E1E),
    400: const Color(0xFF1E1E1E),
    500: const Color(0xFF1E1E1E),
    600: const Color(0xFF1E1E1E),
    700: const Color(0xFF1E1E1E),
    800: const Color(0xFF1E1E1E),
    900: const Color(0xFF1E1E1E),
  },
);

//Methods
class Constant {
  static TextStyle primaryFont(double size,
      {Color color = kWhite, FontWeight? fontWeight}) {
    return fontWeight != null
        ? TextStyle(
            fontFamily: kFontPrimary,
            fontSize: size,
            fontWeight: fontWeight,
            color: color)
        : TextStyle(fontFamily: kFontPrimary, fontSize: size, color: color);
  }
}

BoxDecoration myCardDecoration({Color? color}) => BoxDecoration(
        color: color ?? Colors.white,
        borderRadius: BorderRadius.circular(kCornerRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: const Offset(0.0, 2.0),
            blurRadius: 4.0,
            spreadRadius: 0.3,
          ),
        ]);
