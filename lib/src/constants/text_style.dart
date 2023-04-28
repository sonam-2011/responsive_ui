import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_fonts.dart';
import 'colors.dart';

class MyTextStyle {
  static TextStyle hintTextStyle = TextStyle(
    fontSize: 14.sp,
    color: MyColors.hintTextColor,
  );
  static TextStyle errorTextStyle = TextStyle(
    fontSize: 12.sp,
    color: MyColors.errorTextColor,
  );

  static const TextStyle labelText = TextStyle(
      fontSize: 12,
      color: MyColors.labelTextColor,
      fontWeight: FontWeight.w500);
  static TextStyle customButton2Style = TextStyle(
      fontSize: 12.sp,
      color: MyColors.customButton2Color,
      fontWeight: FontWeight.w500);

  static TextStyle richTextButtStyle1 = TextStyle(
    fontSize: 15.sp,
    fontFamily: Fonts.robotoRegular,
    color: MyColors.appPriColor,
  );

  static TextStyle richTextButtStyle2 = TextStyle(
      color: MyColors.appPriColor,
      fontSize: 15.sp,
      fontFamily: Fonts.robotoMedium,
      fontWeight: FontWeight.w500,
      decoration: TextDecoration.underline);

  static TextStyle otpTopText1 = TextStyle(
      color: Colors.white,
      fontSize: 25.sp,
      fontFamily: Fonts.robotoMedium,
      fontWeight: FontWeight.w500,
      );

  static TextStyle otpTopText2 = TextStyle(
      color: Colors.white,
      fontSize: 15.sp,
      fontFamily: Fonts.robotoMedium,
      fontWeight: FontWeight.w500,
     );
  static TextStyle otpTopText3 = TextStyle(
      color: Colors.white,
      fontSize: 15.sp,
      fontFamily: Fonts.robotoMedium,
      fontWeight: FontWeight.bold,
 );
}
