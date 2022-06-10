import 'package:flutter/material.dart';

import '../../size.dart';

class CustomBottomContainer extends StatelessWidget {
  final Color color;
  final double width;
  CustomBottomContainer({required this.color, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * .4,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(25)),
      ),
    );
  }
}
