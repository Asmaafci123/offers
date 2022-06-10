import 'package:flutter/material.dart';

import '../../size.dart';
class CardMyAccount extends StatelessWidget {
  final String title;
  final String val;
  CardMyAccount({required this.title,required this.val});
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 5,
        color: const Color(0xFFFFFFFF),
        child: SizedBox(
          height: SizeConfig.defaultSize! * 5.5,
          width: SizeConfig.screenWidth,
          child:Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
                0, SizeConfig.defaultSize! * 1.6, 0),
            child:
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                        color: const Color(0xff9c9595)
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: TextFormField(
                   decoration: InputDecoration(
                     border: InputBorder.none,
                   ),
                    initialValue:val,
                  )
                ),
              ],
            ),
          )
      ),
    );
  }
}
/*
Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    title,
                    style: TextStyle(
                        color: const Color(0xff9c9595)
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    val,
                    style: TextStyle(
                        color: const Color(0xFF000000)
                    ),
                  ),
                ),
              ],
            ),
 */