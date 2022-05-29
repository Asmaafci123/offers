import 'package:flutter/material.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:spicy/presentation-layer/custom_widgets/pageview.dart';

import '../../size.dart';
class Part1 extends StatelessWidget {
  var controller1=PageController();
  List<Widget>list=[
    Image(image: AssetImage('assets/images/img1.png'),),
    Stack(
      alignment: Alignment.center,
        children: [
          Image(image: AssetImage('assets/images/img2.png'),),
          Image(image: AssetImage('assets/images/play.png'),),
        ]
    ),
    Image(image: AssetImage('assets/images/img3.png'),)
  ];
  final currentPageNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              height: SizeConfig.defaultSize! * 20,
              child: CustomPageView(controller: controller1,list: list,currentPageNotifier:currentPageNotifier)
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 3,
          ),
          CirclePageIndicator(
            size: 8.0,
            selectedSize: 8.0,
            itemCount: list.length,
            currentPageNotifier: currentPageNotifier,
            selectedDotColor: const Color(0xFF3AB44E),
            dotColor: Colors.grey,
            dotSpacing: SizeConfig.defaultSize! * 1,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 5,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 2,
              right: SizeConfig.defaultSize! * 2,
            ),
            child:Text(
              'Search for favorite near you',
              style: TextStyle(
                  color: const Color(0xFF3AB44E),
                  fontFamily: 'Poppins-Light',
                  fontSize: SizeConfig.defaultSize! * 3.5,
                  fontWeight: FontWeight.w300
              ),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! *1,
          ),
        ],
      ),
    );
  }
}
