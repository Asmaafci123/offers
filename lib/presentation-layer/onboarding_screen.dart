import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../size.dart';
import 'custom_widgets/part1.dart';
import 'custom_widgets/part2.dart';
class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor:const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
                child: Part1()),
            Expanded(child: Part2())
          ],
        ),
      ),
    );
  }
}
