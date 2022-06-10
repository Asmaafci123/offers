import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/views/custom_widgets/custom-appbar.dart';
import 'package:spicy/views/custom_widgets/card.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: 'My Cards',
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
              SizeConfig.defaultSize! * 4, SizeConfig.defaultSize! * 1.6, 0),
          child: SizedBox(
              height: double.infinity,
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: SizeConfig.defaultSize! * 2,
                ),
                itemBuilder: (context, index) => CustomCard(),
                itemCount: 3,
              )),
        ));
  }
}
