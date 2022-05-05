import 'package:flutter/material.dart';


// const colorBackdrop = Color(0xFF303030);
// const colorPassive = Color(0xFF505050);
// const colorText = Color(0xFF808080);
// const colorGlow = Color(0xFF707070);
// const colorPunch = Color(0xFFA0A0A0);

// Change this constant to Colors.black for text appearance in light theme
const themeTextColor = Colors.grey;

Color colorBackdrop = themeTextColor.withOpacity(0.2);
Color colorPassive = themeTextColor.withOpacity(0.4);
Color colorText = themeTextColor.withOpacity(0.5);
Color colorGlow = themeTextColor.withOpacity(0.7);
Color colorPunch = themeTextColor.withOpacity(0.9);

const double sizeTitle = 48;
const double sizeSubtitle = 28;
const double sizeCaption = 18;
const double sizeBody = 14;
const double sizeHint = 12;
const double sizeFootnote = 9;

TextStyle titleStyle = TextStyle(color: colorGlow, fontSize: sizeTitle);

TextStyle subtitleStyle = TextStyle(color: colorGlow, fontSize: sizeSubtitle);

TextStyle captionStyle = TextStyle(color: colorGlow, fontSize: sizeCaption);

TextStyle bodyStyle = TextStyle(color: colorText, fontSize: sizeBody);

TextStyle hintStyle = TextStyle(color: colorPassive, fontSize: sizeHint);

TextStyle hintBoldStyle = TextStyle(
    color: colorPassive, fontSize: sizeHint, fontWeight: FontWeight.bold);

TextStyle footnoteStyle = TextStyle(color: colorPassive, fontSize: sizeFootnote);

TextStyle headingStyle = TextStyle(
    color: colorGlow, fontSize: sizeCaption, fontWeight: FontWeight.bold);

TextStyle passiveCaptionStyle = TextStyle(
    color: colorPassive, fontSize: sizeCaption, fontWeight: FontWeight.bold);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.grey,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  fontFamily: 'Montserrat',
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.grey,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  fontFamily: 'Montserrat',
);
