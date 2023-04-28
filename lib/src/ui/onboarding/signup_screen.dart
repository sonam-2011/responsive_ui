import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/src/ui/onboarding/login_screen.dart';
import 'package:responsive_ui/src/ui/onboarding/otp_screen.dart';

import '../../constants/app_fonts.dart';
import '../../constants/app_strings.dart';
import '../../constants/colors.dart';
import '../widgets/custom_button2.dart';
import '../widgets/custom_richtext_button.dart';
import '../widgets/input_field.dart';
import '../widgets/splash_login_screen_header.dart';
import '../widgets/validators.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController mobile = TextEditingController();
  TextEditingController fullName = TextEditingController();

  TextEditingController password = TextEditingController();
  void navigationPage() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return  OtpScreen();
    }));
  }

  Form buildForm() {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            InputField(
              onTap: () {},
              textInputAction: TextInputAction.next,
              onSaved: (v) {
                fullName.text = v ?? "";
              },
              isNumeric: false,
              isPhoneNum: false,
              isPasswordField: false,
              controller: fullName,
              validator: Validators.validateEmpty,
              text: "Full Name",
            ),
            SizedBox(
              height: 11.h,
            ),
            InputField(
              onTap: () {},
              textInputAction: TextInputAction.next,
              onSaved: (v) {
                mobile.text = v ?? "";
              },
              isNumeric: true,
              isPhoneNum: false,
              isPasswordField: false,
              controller: mobile,
              validator: Validators.validateEmpty,
              text: "Mobile Number",
            ),
            SizedBox(
              height: 11.h,
            ),
            InputField(
              onTap: () {},
              textInputAction: TextInputAction.next,
              onSaved: (v) {
                password.text = v ?? "";
              },
              isNumeric: false,
              isPhoneNum: false,
              isPasswordField: false,
              controller: password,
              validator: Validators.validateEmpty,
              text: "Password",
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 75.h,
                ),
                 SplashLoginScreenHeader(
                  text: AppStrings.splashText,
                  textColor: MyColors.loginTextColor,
                ),
                SizedBox(
                  height: 21.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "SignUp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.sp,
                            color: MyColors.loginTextColor,
                            fontFamily: Fonts.robotoRegular),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 25.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Experience the best alternate to Cash.",
                        style: TextStyle(

                            fontSize: 15.sp,
                            color: MyColors.loginTextColor,
                            fontFamily: Fonts.robotoRegular),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 42.h,
                ),
                buildForm(),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: CustomButton2(
                    text: "Next",
                    onTap:navigationPage
                  ),
                ),
                SizedBox(
                  height: 28.h,
                ),
                CustomRichTextWidget(
                  text1: 'Already have an account?  ',
                  text2: 'Login',
                  onTap: navigationPage,
                ),
              ],
            ),
          ),
        ));
  }
}
