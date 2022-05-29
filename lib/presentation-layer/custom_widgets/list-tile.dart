import 'package:flutter/material.dart';

import '../../size.dart';
class ReusableListTile extends StatelessWidget {
  const ReusableListTile({Key? key,required this.title,required this.imgPath,required this.onTap}) : super(key: key);
  final String title;
  final String imgPath;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Image(
            image: AssetImage(imgPath),
            color:const Color(0xFF3AB44E),
          ),
          SizedBox(
            width: SizeConfig.defaultSize! * 1.8,
          ),
          Text(
            title,
            style: TextStyle(
                color:const Color(0xFF3AB44E),
                fontWeight: FontWeight.w500,
                fontSize: SizeConfig.defaultSize! * 1.9
            ),),
        ],
      ),
      onTap:onTap
    );
  }
}
