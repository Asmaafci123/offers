import 'package:flutter/material.dart';
import '../../size.dart';
import '../custom_widgets/best-offers-part.dart';
import '../custom_widgets/item-of-besr-companies.dart';
import '../custom_widgets/main-categories-home-page.dart';
import '../custom_widgets/main-headers.dart';
import '../custom_widgets/slider-of-home-page.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SliderHomePage(),
            MainHeaders(
              text: 'Categories',
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),
            MainCategoriesPart(),
            SizedBox(
              height: SizeConfig.defaultSize! * 1.5,
            ),
            MainHeaders(
              text: 'Offers',
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),
            BestOffersPartHomePage(),
            SizedBox(
              height: SizeConfig.defaultSize! * 1.5,
            ),
            MainHeaders(
              text: 'Agencies',
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 1,
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 13,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemOfBestCompanies();
                },
                itemCount: 10,
              ),
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
          ],
        ),
      ),
    );
  }
}
