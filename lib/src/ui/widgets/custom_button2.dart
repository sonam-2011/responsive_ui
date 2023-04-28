import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_style.dart';

class CustomButton2 extends StatelessWidget {
  final Function()? onTap;
  final String? text;
  final Color? color;
  final Color? colorText;

  const CustomButton2(
      {Key? key, this.onTap, this.text, this.color, this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // VxBox(child: Text(text??"").centered()).linearGradient([MyColors.pinkMy,MyColors.yellowMy]).make().onTap(onTap).b,
          InkWell(
            onTap: onTap,
            splashColor: Colors.pink,
            highlightColor:  Colors.pink,
            child: Container(
              height: 60.h,
              // padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                  color: MyColors.appPriColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: MyColors.appPriColor,
                  )),
              alignment: Alignment.center,
              child: Text(
                text ?? "aaa",
                textAlign: TextAlign.center,
                style:TextStyle(
                    fontSize: 14.sp,
                    color: MyColors.customButton2Color,
                    fontWeight: FontWeight.bold
                )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
