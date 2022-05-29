import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
import 'description-of-item.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeConfig.defaultSize! * 1),
      ),
      elevation: 5,
      color: const Color(0xFFFFFFFF),
      child: Stack(
        children: [
          SizedBox(
            height: SizeConfig.defaultSize! * 13,
            width: SizeConfig.screenWidth,
            child: Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(SizeConfig.defaultSize! * 1),
                      bottomLeft: Radius.circular(SizeConfig.defaultSize! * 1),
                    ),
                    child: Image(
                      image: AssetImage('assets/images/coffe.jpg'),
                    )),
                SizedBox(
                  width: SizeConfig.defaultSize! * 1,
                ),
                DescriptionOfItem(),
              ],
            ),
          ),
          Positioned(
            top: 0,
            right: SizeConfig.defaultSize! * 1,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height:SizeConfig.defaultSize! * 5.5,
                  width: SizeConfig.defaultSize! * 3.7,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/sale.png'),
                  ),
                ),
                Text(
                  ' 15 % ',
                  style: TextStyle(
                      color: const Color(0xFFFFFFFFF),
                      fontSize: SizeConfig.defaultSize! * 1.4,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: SizeConfig.defaultSize! * 1,
            right: SizeConfig.defaultSize! * 2,
            child: SizedBox(
              width: SizeConfig.defaultSize! * 3,
              child: Image(
                image: AssetImage('assets/images/red-heart.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
