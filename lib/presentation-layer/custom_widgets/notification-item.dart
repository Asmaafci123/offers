import 'package:flutter/material.dart';

import '../../size.dart';
class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize!*9.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize!*3.7),
        border: Border.all(
          color:  const Color(0xFF3AB44E),
          width: SizeConfig.defaultSize!*0.09
        )
      ),
      child: Center(
        child: Stack(
        //  alignment: Alignment.topLeft,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.defaultSize!*1.5,
                  0,
                  SizeConfig.defaultSize!*1.5,
                  0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor:   const Color(0xFF3AB44E),
                    child: Image(image: AssetImage('assets/images/cannabis.png'),),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize!*1.4,
                  ),
                  Expanded(
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cannabies',
                            style: TextStyle(
                                color: const Color(0xFF3AB44E),
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.defaultSize!*2.3
                            ),
                          ),
                          Text(
                            'We have an Exciting Offers for you near to yo...',
                            style: TextStyle(
                                color: const Color(0xFF213955),
                                fontWeight: FontWeight.w400,
                                fontSize: SizeConfig.defaultSize!*1.5
                            ),

                          ),
                        ],
                      ))
                ],
              ),
            ),
            Positioned(
              top: SizeConfig.defaultSize!*1.3,
              right:  SizeConfig.defaultSize!*2.7,
              child: Row(
                children: [
                  Positioned(
                    top: SizeConfig.defaultSize!*1.3,
                    right:  SizeConfig.defaultSize!*10,
                    child: Row(
                      children: [
                        Image(
                          image: AssetImage('assets/images/hour.png'),
                          width:  SizeConfig.defaultSize!*1.2,
                          height:  SizeConfig.defaultSize!*1.2,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width:SizeConfig.defaultSize!*1,
                  ),
                  Positioned(
                    top:  SizeConfig.defaultSize!*1.3,
                    right: 20,
                    child: Row(
                      children: [
                        Text('2 Days ago')
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
