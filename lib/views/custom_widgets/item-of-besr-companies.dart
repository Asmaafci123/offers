import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../size.dart';
class ItemOfBestCompanies extends StatelessWidget {
  const ItemOfBestCompanies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(left: SizeConfig.defaultSize! * 1),
      child: Card(
        elevation: 5,
        child: Container(
            height:SizeConfig.defaultSize! * 13,
            width: SizeConfig.defaultSize! * 13,
            decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.grey,
                width: 1
              )
            ),
            child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/com.png'),)
        ),
      ),
    );
  }
}
