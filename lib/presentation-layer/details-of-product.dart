import 'package:flutter/material.dart';
import '../size.dart';
import 'custom_widgets/descripe-product.dart';
import 'custom_widgets/get-address.dart';
import 'custom_widgets/time-of-offer.dart';
class DetailsOfProductScreen extends StatelessWidget {
  const DetailsOfProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 25,
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/img2.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height:SizeConfig.defaultSize! * 1,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  SizeConfig.defaultSize! * 1,0,
                  SizeConfig.defaultSize! * 1,0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Coffee',
                        style: TextStyle(
                            color: const Color(0xFF213955),
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.defaultSize! * 2.5),
                      ),
                      Spacer(),
                      IconButton(
                        // padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
                          onPressed: () {},
                          color: const Color(0xFF3AB44E),
                          icon:const Icon(Icons.share)
                      ),
                      IconButton(
                        // padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
                        onPressed: () {},
                        color: const Color(0xFF3AB44E),
                        icon:Image.asset('assets/icons/heart.png',color: const Color(0xFF3AB44E),),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:SizeConfig.defaultSize! * 0.5,
                  ),
                  DescribeProduct(),
                  SizedBox(
                    height:SizeConfig.defaultSize! * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TimeOfOffer(type: 'DAYS', number: '1',),
                      SizedBox(
                        width:SizeConfig.defaultSize! * 1,
                      ),
                      TimeOfOffer(type: 'HOURES', number: '20',),
                      SizedBox(
                        width:SizeConfig.defaultSize! * 1,
                      ),
                      TimeOfOffer(type: 'MINUTES', number: '40',),
                    ],
                  ),
                  SizedBox(
                    height:SizeConfig.defaultSize! * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('50 USD',style: TextStyle(
                        color: const Color(0xFF3AB44E),
                        fontSize: SizeConfig.defaultSize! * 2,
                        fontWeight: FontWeight.w400,
                      ),),
                      SizedBox(
                        width:SizeConfig.defaultSize! * 1.5,
                      ),
                      Text('100 USD',style: TextStyle(
                          color: Colors.red,
                          fontSize: SizeConfig.defaultSize! * 2,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.lineThrough
                      ),),
                    ],
                  ),
                  SizedBox(
                    height:SizeConfig.defaultSize! * 1.5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Address',
                        style: TextStyle(
                            color: const Color(0xFF213955),
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.defaultSize! * 2.5),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          children: [
                            Text(
                              'show all',
                              style: TextStyle(
                                  color: const Color(0xFF213955),
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig.defaultSize! * 1.5),
                            ),
                            Icon(
                                Icons.arrow_forward_rounded,
                              size: SizeConfig.defaultSize! * 2,
                              color: const Color(0xFF213955),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height:SizeConfig.defaultSize! * 1.5,
                  ),
                 SizedBox(
                   height: SizeConfig.defaultSize! * 25,
                   child: GetAddress()
                 ),
                  SizedBox(
                    height:SizeConfig.defaultSize! * 1.5,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
