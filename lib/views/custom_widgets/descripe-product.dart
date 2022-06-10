import 'package:flutter/material.dart';

import '../../size.dart';
class DescribeProduct extends StatelessWidget {
  const DescribeProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      'Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee Coffee',
      style: TextStyle(
          color: const Color(0xFF213955),
          fontWeight: FontWeight.normal,
          fontSize: SizeConfig.defaultSize! * 1.7),
      overflow: TextOverflow.ellipsis,

    );
  }
}
