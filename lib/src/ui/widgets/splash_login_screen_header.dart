import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_fonts.dart';
import '../../constants/app_strings.dart';
import '../../constants/colors.dart';

class SplashLoginScreenHeader extends StatelessWidget {
  final Color textColor;
  final String text;
  const SplashLoginScreenHeader({Key? key, this.textColor = MyColors.splashTextColor, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
                height: 137.h,
                width: 170.w,
                child: Image.asset(
                  "assets/images/logo.png",
                  fit: BoxFit.fill,
                )),
            SizedBox(height: 11.h,),
            Container(
              child:  Text(
               text,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    color: textColor,
                    fontFamily: Fonts.robotoRegular),
              ),
            )
          ],
        ),
      ],
    );
  }
}
