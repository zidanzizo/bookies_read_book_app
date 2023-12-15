import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFF57549E);
Color blueCardColor = const Color(0xFF8EC9F5);
Color lighBlueCardColor = const Color(0xFFC5E5FF);
Color blueCardTextColor = const Color(0xFF3C6A8C);
Color purpleColor = const Color(0xFF35325E);
Color lightPurpleColor = const Color(0xFFD8D8FF);
Color purpleCardColor = const Color(0xFFADAEFF);
Color purpleCardTextColor = const Color(0xFF5C5DA0);
Color redBrownColor = const Color(0xFFFDEBEA);
Color lightRedBrownColor = const Color(0xFFFFF8F8);
Color redBrownCardTextColor = const Color(0xFF9F7B79);
Color lightOrangeColor = const Color(0xFFFFE9CB);
Color lightPinkColor = const Color(0xFFFFD9FB);
Color whiteColor = const Color(0xFFFFFFFF);
Color whiteGreyColor = const Color(0xFFF6F8FA);
Color greyColor = const Color(0xFF90909E);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;

// font family (use this if user medium, semiBold, extrabold, black)
String? mediumText = GoogleFonts.poppins(fontWeight: medium).fontFamily;
String? semiBoldText = GoogleFonts.poppins(fontWeight: semiBold).fontFamily;
String? extraBoldText = GoogleFonts.poppins(fontWeight: extraBold).fontFamily;
String? blackText = GoogleFonts.poppins(fontWeight: black).fontFamily;

TextStyle whiteTextStyle = TextStyle(
  color: whiteColor,
);

TextStyle whiteGreyTextStyle = TextStyle(
  color: whiteGreyColor,
);

TextStyle purpleTextStyle = TextStyle(
  color: purpleColor,
);

TextStyle greyTextStyle = TextStyle(
  color: greyColor,
);

TextStyle blueCardTextStyle = TextStyle(
  color: blueCardTextColor,
  fontSize: 10,
);

TextStyle purpleCardTextStyle = TextStyle(
  color: purpleCardTextColor,
  fontSize: 10,
);

TextStyle redBrownCardTextStyle = TextStyle(
  color: redBrownCardTextColor,
  fontSize: 10,
);
