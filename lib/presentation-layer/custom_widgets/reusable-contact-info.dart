import 'package:flutter/material.dart';

import '../../size.dart';
class ReusableContactInfo extends StatelessWidget {
  final IconData icon;
  final String val;
  ReusableContactInfo({required this.icon,required this.val});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Icon(
            icon,
            size: SizeConfig.defaultSize! *2.2,
            color: const Color(0xFF3AB44E),
          ),
          SizedBox(
            width: SizeConfig.defaultSize! *0.3,
          ),
          Expanded(
            child: Text(
              val,
              style: TextStyle(
                  color: const Color(0xFF213955),
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.defaultSize! * 1.3),
              maxLines: 3,
            ),
          ),
        ],
      ),
    );
  }
}
