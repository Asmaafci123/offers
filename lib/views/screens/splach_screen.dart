import 'dart:async';

import 'package:flutter/material.dart';
import 'package:spicy/utilities/routes.dart';

import '../../size.dart';
import 'onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context)
            .pushReplacementNamed(AppRoutes.onBoardingScreenRoute));
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: Image(
          image: AssetImage('assets/images/logo.jpg'),
        ),
      ),
    );
  }
}
