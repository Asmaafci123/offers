import 'package:flutter/material.dart';

import '../../size.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final double width;
  final double height;
  final VoidCallback function;
  CustomButton(
      {required this.color,
      required this.text,
      required this.textColor,
      required this.width,
      required this.height,
      required this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.defaultSize! * 6))),
        ),
        child: Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: SizeConfig.defaultSize! * 2,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
/*
/// container case problems in performance
GestureDetector(
      onTap: function,
      child: Container(
        height: SizeConfig.defaultSize! * 4.5,
        width: width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.grey),
          borderRadius:
              BorderRadius.all(Radius.circular(SizeConfig.defaultSize! * 6)),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontSize: SizeConfig.defaultSize! * 2,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    )
    */