import 'package:flutter/material.dart';
import 'package:spicy/views/custom_widgets/reusable-contact-info.dart';
import '../../size.dart';

class DescriptionOfJob extends StatelessWidget {
  const DescriptionOfJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Coffee Maker',
            style: TextStyle(
                color: const Color(0xFF213955),
                fontWeight: FontWeight.w600,
                fontSize: SizeConfig.defaultSize! * 2),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1.1,
          ),
          Text(
            'Coffee Maker Coffee Maker Coffee Maker Coffee Maker',
            style: TextStyle(
                color: const Color(0xFF213955),
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.defaultSize! * 1.5),
            maxLines: 3,
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1,
          ),
          Row(
            children: [
              ReusableContactInfo(
                icon: Icons.local_phone_outlined,
                val: '12345678',
              ),
              ReusableContactInfo(
                icon: Icons.email_outlined,
                val: 'asmaa1234@gmail.com',
              ),
            ],
          )
        ],
      ),
    );
  }
}
