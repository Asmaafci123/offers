import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:spicy/size.dart';

class PaymentMeyhod extends StatelessWidget {
  const PaymentMeyhod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: EdgeInsets.fromLTRB(
            SizeConfig.defaultSize! * 1.6, 0, SizeConfig.defaultSize! * 1.6, 0),
        child: SizedBox(
          height: SizeConfig.defaultSize! * 10,
          child: Row(children: [
            Image(
              image: AssetImage('assets/images/visa.png'),
              width: SizeConfig.defaultSize! * 6,
              height: SizeConfig.defaultSize! * 6,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: SizeConfig.defaultSize! * 2,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '**** **** **** 5122',
                  style: TextStyle(
                    color: Color(0xFF213955),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 0.5,
                ),
                Text(
                  'Expired 09/25',
                  style: TextStyle(
                    color: Color(0xFFc2c4c6),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
