import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:responsive_ui/src/constants/app_strings.dart';
import 'package:responsive_ui/src/constants/colors.dart';

import '../widgets/splash_login_screen_header.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    await Future.delayed(const Duration(milliseconds: 500));
    var duration = const Duration(seconds: 3);
    setState(() {
      animate = true;
    });
    return Timer(duration, (await navigationPage));
  }

  void navigationPage() async {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return  LoginScreen();
    }));
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: MyColors.splashBgColor,
      body: Column(
        children: [
          SizedBox(
            height: 281.h,
          ),
          SplashLoginScreenHeader(
            text: AppStrings.splashText,
          )
        ],
      ),
    ));
  }
}
