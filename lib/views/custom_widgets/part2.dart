import 'package:flutter/material.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/screens/home-screen.dart';
import 'package:spicy/views/screens/sign-up-screen.dart';
import 'package:spicy/views/screens/sign_in_screen.dart';

import '../../size.dart';
import 'main-button.dart';

class Part2 extends StatelessWidget {
  const Part2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF3AB44E),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                height: SizeConfig.defaultSize! * 4.5,
                text: 'Sign Up',
                color: Colors.transparent,
                textColor: Colors.white,
                width: SizeConfig.defaultSize! * 16,
                function: () {
                  Navigator.of(context).pushNamed(AppRoutes.signUpScreenRoute);
                },
              ),
              SizedBox(
                width: SizeConfig.defaultSize! * 2,
              ),
              CustomButton(
                height: SizeConfig.defaultSize! * 4.5,
                text: 'Sign In',
                color: Colors.white,
                textColor: const Color(0xFF3AB44E),
                width: SizeConfig.defaultSize! * 16,
                function: () {
                  Navigator.of(context).pushNamed(AppRoutes.signInScreenRoute);
                },
              ),
            ],
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(AppRoutes.homeScreenRoute);
            },
            child: Text(
              'Skip',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize! * 2,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
