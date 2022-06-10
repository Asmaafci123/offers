import 'package:flutter/material.dart';

import '../../size.dart';

class DescriptionOfItem extends StatelessWidget {
  const DescriptionOfItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Coffee & Drink',
          style: TextStyle(
              color: const Color(0xFF3AB44E),
              fontSize: SizeConfig.defaultSize! * 1.8,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 0.8,
        ),
        SizedBox(
          width: SizeConfig.defaultSize! * 17,
          child: Text(
            'Lorem ipsum dolor sit amet, consetetur sadipscing elitr',
            style: TextStyle(
                color: const Color(0xFF213955),
                fontSize: SizeConfig.defaultSize! * 1.35,
                fontWeight: FontWeight.w400),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
