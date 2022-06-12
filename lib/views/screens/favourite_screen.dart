import 'package:flutter/material.dart';
import 'package:spicy/views/custom_widgets/custom-appbar.dart';

import '../../size.dart';
import '../custom_widgets/favourite-item.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: CustomAppBar(
          title: 'Favourite',
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
              SizeConfig.defaultSize! * 4, SizeConfig.defaultSize! * 1.6, 0),
          child: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => FavouriteItem(),
                  separatorBuilder: (context, index) => SizedBox(
                    height: SizeConfig.defaultSize! * 2,
                  ),
                  itemCount: 15,
                ),
              ),
            ],
          ),
        ));
  }
}
