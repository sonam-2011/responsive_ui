import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/src/constants/image_strings.dart';
import 'package:responsive_ui/src/ui/onboarding/login_screen.dart';

import '../../constants/app_fonts.dart';
import '../../constants/app_strings.dart';
import '../../constants/colors.dart';
import '../../constants/text_style.dart';
import '../widgets/custom_button2.dart';
import '../widgets/custom_richtext_button.dart';
import '../widgets/input_field.dart';
import '../widgets/splash_login_screen_header.dart';
import '../widgets/validators.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  void navigationPage() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 181.h,
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 181.h,
                      child: Image.asset(ImageStrings.otpImage,fit: BoxFit.cover,),),
                  Positioned(
                      top: 29.h,
                      left: 22.w,
                      child: SizedBox(
                          width: 20.w,
                          height: 14.h,
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).pop();
                            },
                              child: Image.asset(ImageStrings.backArrow)))),
                  Positioned(
                      top: 81.h,
                      left: 25.w,
                      child: Text(
                        "What’s the code?",
                        style: MyTextStyle.otpTopText1,
                      )),
                  Positioned(
                      top: 116.h,
                      left: 25.w,
                      child: CustomRichTextWidget(
                        text1: 'Enter the code sent to ',
                        text2: '+91 55 1234 5678',
                        textStyle1:  MyTextStyle.otpTopText2,
                        textStyle2:  MyTextStyle.otpTopText3,
                      )),
                  // Positioned(
                  //   bottom: 812.h,
                  //
                  //     child:Container(
                  //       color: Colors.green,
                  //     )),

                ],
              ),
            ),
            SizedBox(
              height: 29.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 62.w,
                ),
                Container(
                  width: 53.w,
                  height: 64.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: MyColors.appPriColor,
                      ),
                    // color: Colors.green,
                  ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        maxLength: 1,

                      ),
                    ),

                ),
                SizedBox(
                  width: 11.w,
                ),
                Container(
                  width: 53.w,
                  height: 64.h,
                  color: Colors.green,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
