import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/src/constants/text_style.dart';

import '../../constants/app_fonts.dart';
import '../../constants/colors.dart';

class CustomRichTextWidget extends StatelessWidget {
  final Function()? onTap;
  final String text1;
  final String text2;
  final TextStyle? textStyle1;
  final TextStyle? textStyle2;
  const CustomRichTextWidget({Key? key, required this.text1, required this.text2, this.onTap, this.textStyle1, this.textStyle2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      splashColor: Colors.white10,
      highlightColor:  Colors.green,
      borderRadius: BorderRadius.circular(20.0),
      onTap: onTap,
      child: RichText(
          text: TextSpan(
              text: text1,
              style: textStyle1 ?? MyTextStyle.richTextButtStyle1,
              children: [
                TextSpan(
                  text: text2,
                  style:textStyle2 ??  MyTextStyle.richTextButtStyle2
                )
              ])),
    );
  }
}
