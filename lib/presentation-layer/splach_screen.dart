import 'dart:async';

import 'package:flutter/material.dart';

import '../size.dart';
import 'onboarding_screen.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => OnBoardingScreen())));
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child:  Image(image: AssetImage('assets/images/logo.jpg'),),
      ),
    );
  }
}
