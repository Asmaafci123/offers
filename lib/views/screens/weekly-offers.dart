import 'package:flutter/material.dart';
import '../../size.dart';
import '../custom_widgets/item-of-weekly-offers.dart';
import '../custom_widgets/main-categories-home-page.dart';

class WeeklyOffersScreen extends StatelessWidget {
  const WeeklyOffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: Column(
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            MainCategoriesPart(),
            SizedBox(
              height: SizeConfig.defaultSize! * 3,
            ),
            IndexedStack(
              index: 0,
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight,
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ItemOfWeeklyOffers();
                    },
                    itemCount: 10,
                    separatorBuilder: (BuildContext context, int index) =>
                        SizedBox(
                      height: SizeConfig.defaultSize! * 1,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
