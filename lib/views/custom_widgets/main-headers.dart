import 'package:flutter/material.dart';

import '../../size.dart';
class MainHeaders extends StatelessWidget {
  final String text;
  MainHeaders({required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.defaultSize! * 1.5, SizeConfig.defaultSize! * 1.5 ,
          SizeConfig.defaultSize! * 1.5, 0),
      child: Text(
        text,
        style: TextStyle(
            color: const Color(0xFF213955),
            fontWeight: FontWeight.w700,
            fontSize: SizeConfig.defaultSize! * 2.3),
      ),
    );
  }
}
