import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/views/custom_widgets/descripe-product.dart';
import 'package:spicy/views/custom_widgets/time-of-offer.dart';

class DetailsOfItemOfStore extends StatelessWidget {
  const DetailsOfItemOfStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: SizeConfig.defaultSize! * 25,
                    width: double.infinity,
                    child: Image(
                      image: AssetImage('assets/images/img2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  IconButton(
                      iconSize: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                      icon: Icon(Icons.arrow_back))
                ],
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 1,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1, 0,
                    SizeConfig.defaultSize! * 1, 0),
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
                            icon: const Icon(Icons.share)),
                        IconButton(
                          // padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
                          onPressed: () {},
                          color: const Color(0xFF3AB44E),
                          icon: Image.asset(
                            'assets/icons/heart.png',
                            color: const Color(0xFF3AB44E),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 0.5,
                    ),
                    DescribeProduct(),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TimeOfOffer(
                          type: 'DAYS',
                          number: '1',
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize! * 1,
                        ),
                        TimeOfOffer(
                          type: 'HOURES',
                          number: '20',
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize! * 1,
                        ),
                        TimeOfOffer(
                          type: 'MINUTES',
                          number: '40',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                          color: const Color(0xFF213955),
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.defaultSize! * 2.5),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '50 USD',
                          style: TextStyle(
                            color: const Color(0xFF3AB44E),
                            fontSize: SizeConfig.defaultSize! * 2,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize! * 1.5,
                        ),
                        Text(
                          '100 USD',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: SizeConfig.defaultSize! * 2,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Text(
                      'Contact Info',
                      style: TextStyle(
                          color: const Color(0xFF213955),
                          fontWeight: FontWeight.w600,
                          fontSize: SizeConfig.defaultSize! * 2.5),
                    ),
                    SizedBox(
                      height: SizeConfig.defaultSize! * 1.5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.phone, color: Color(0xFF3AB44E)),
                            Text(
                              '1234521354',
                              style: TextStyle(
                                  color: const Color(0xFF3AB44E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.defaultSize! * 2),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize! * 2,
                        ),
                        Row(
                          children: [
                            const Icon(Icons.whatsapp,
                                color: Color(0xFF3AB44E)),
                            Text(
                              '1234521354',
                              style: TextStyle(
                                  color: const Color(0xFF3AB44E),
                                  fontWeight: FontWeight.w400,
                                  fontSize: SizeConfig.defaultSize! * 2),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
