import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
class ItemOfMainCategory extends StatelessWidget {
  const ItemOfMainCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize! * 4))
      ),
      elevation: 5,
      child: Center(
        child: CircleAvatar(
          backgroundColor: const Color(0xFFFFFFFF),
          radius: SizeConfig.defaultSize! * 4,
          child:Image(
              image: AssetImage('assets/images/Flat.png'),
          ),
        ),
      ),
    );
  }
}
