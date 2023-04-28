import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_ui/src/ui/onboarding/signup_screen.dart';

import '../../constants/app_fonts.dart';
import '../../constants/app_strings.dart';
import '../../constants/colors.dart';
import '../widgets/custom_button2.dart';
import '../widgets/custom_richtext_button.dart';
import '../widgets/inkwell_widget.dart';
import '../widgets/input_field.dart';
import '../widgets/splash_login_screen_header.dart';
import '../widgets/validators.dart';

class LoginScreen extends StatefulWidget {

  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController mobile = TextEditingController();

  TextEditingController password = TextEditingController();

  Widget buildTitle() => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    child: InkWellWidget(
      color: Colors.red.withOpacity(0.7),
      // customBorder: CustomBorder(),
      onTap: navigationPage,
      builder: (isTapped) =>            CustomRichTextWidget(
        text1: 'Don’t have an account yet? ',
        text2: 'Signup',
        // onTap: navigationPage,
      ),
    ),
  );

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
            const SplashLoginScreenHeader(
              text: AppStrings.splashText,
              textColor: MyColors.loginTextColor,
            ),
            SizedBox(
              height: 78.h,
            ),


            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                        color: MyColors.loginTextColor,
                        fontFamily: Fonts.robotoRegular),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 11.h,
            ),
            buildForm(),
            SizedBox(
              height: 18.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton2(
                text: "Login",
                onTap: () {},
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Align(
              alignment: Alignment.center,
              child: buildTitle(),
            ),

          ],
        ),
      ),
    ));
  }

  void navigationPage() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return  SignupScreen();
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
              isNumeric: true,
              isPhoneNum: false,
              isPasswordField: false,
              controller: password,
              validator: Validators.validateEmpty,
              text: "Password",
            ),
            SizedBox(
              height: 11.h,
            ),
          ],
        ),
      ),
    );
  }
}
