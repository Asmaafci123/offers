import 'package:flutter/material.dart';

import '../../size.dart';
import 'item-of-best-offers.dart';
class BestOffersPartHomePage extends StatelessWidget {
  const BestOffersPartHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: SizeConfig.defaultSize! * 34,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return ItemOfBestOffers();
        },
        itemCount: 10,),
    );
  }
}
