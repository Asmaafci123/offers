import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/custom_widgets/item-of-weekly-offers.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1,
            SizeConfig.defaultSize! * 2, SizeConfig.defaultSize! * 1, 0),
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ItemOfWeeklyOffers(() => Navigator.of(context)
                .pushNamed(AppRoutes.detailsOfItemOfStoreScreenRoute));
          },
          itemCount: 10,
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
        ),
      ),
    );
  }
}
