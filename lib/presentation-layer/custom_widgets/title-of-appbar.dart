import 'package:flutter/material.dart';
import '../../size.dart';
class TitleOfAppBar extends StatelessWidget {
  final String title;
  TitleOfAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: const Color(0xFF213955),
          fontSize: SizeConfig.defaultSize! * 2.2,
          fontWeight: FontWeight.w500),
    );
  }
}
