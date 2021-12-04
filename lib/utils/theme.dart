import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jobber/utils/brand_colors.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Avenir',
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(
        color: BrandColors.mblack,
        fontSize: 48.sp,
        fontWeight: FontWeight.bold),
    headline2: TextStyle(
        color: BrandColors.mblack,
        fontSize: 32.sp,
        fontWeight: FontWeight.bold),
    headline3: TextStyle(
        color: BrandColors.mblack,
        fontSize: 26.sp,
        fontWeight: FontWeight.bold),
    headline4: TextStyle(
        color: BrandColors.mblack,
        fontSize: 20.sp,
        fontWeight: FontWeight.bold),
    headline5: TextStyle(
        color: BrandColors.mblack,
        fontSize: 16.sp,
        fontWeight: FontWeight.bold),
    headline6: TextStyle(
        color: BrandColors.mblack,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold),
    bodyText1: TextStyle(
        color: BrandColors.mblack,
        fontSize: 12.sp,
        fontWeight: FontWeight.bold),
    bodyText2: TextStyle(
        color: BrandColors.mblack,
        fontSize: 10.sp,
        fontWeight: FontWeight.bold),
  );
}
