import 'package:flutter/material.dart';

import '../../size.dart';
class TimeOfOffer extends StatelessWidget {
  final String number;
  final String type;
  TimeOfOffer({required this.number,required this.type});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: SizeConfig.defaultSize! * 6,
          width: SizeConfig.defaultSize! * 6.5,
          color:const Color(0xFF213955) ,
          child:Center(
            child: Text(
              number,
              style: TextStyle(
                  color: const Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500,
                  fontSize: SizeConfig.defaultSize! * 2.5),

            ),
          ),
        ),
        SizedBox(
          height:SizeConfig.defaultSize! * .7,
        ),
        Text(
          type,
          style: TextStyle(
              color: const Color(0xFF213955),
              fontWeight: FontWeight.normal,
              fontSize: SizeConfig.defaultSize! * 1.7),
          overflow: TextOverflow.ellipsis,

        )
      ],
    );
  }
}
