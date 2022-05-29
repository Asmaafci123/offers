import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
class SliderHomePage extends StatelessWidget {
  const SliderHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 1, // how much of 100% occupy item
        aspectRatio: 2.0,
        initialPage: 2, // index of initial page
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return SizedBox(
          height: SizeConfig.defaultSize! * 25,
          width: SizeConfig.screenWidth,
          child: Image(
            image: AssetImage('assets/images/img2.png'),
            fit: BoxFit.cover,
          ),
        );
      },
      itemCount: 10,
    );
  }
}
