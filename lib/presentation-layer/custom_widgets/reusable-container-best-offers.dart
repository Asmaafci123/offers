import 'package:flutter/material.dart';

import '../../size.dart';
class ContainerOfBestOfOffers extends StatelessWidget {
  final Color color;
  final String text;
  ContainerOfBestOfOffers({required this.color,required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 2.8,
      width: SizeConfig.defaultSize! * 10,
      decoration: BoxDecoration(
          color: color,
          borderRadius:  BorderRadius.circular(SizeConfig.defaultSize! * 5)
      ),
      child: Center(
        child: Text(text,style: TextStyle(
          color: const Color(0xFFFFFFFF)
        ),),
      ),
    );
  }
}
