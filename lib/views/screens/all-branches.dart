import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/views/custom_widgets/get-address.dart';

class AllBranches extends StatelessWidget {
  const AllBranches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          GetAddress(),
          Padding(
            padding: EdgeInsets.all(SizeConfig.defaultSize! * 2.5),
            child: Text(
              'All Branches',
              style: TextStyle(
                  color: const Color(0xFF213955),
                  fontWeight: FontWeight.w600,
                  fontSize: SizeConfig.defaultSize! * 2.2),
            ),
          ),
          Positioned(
              top: SizeConfig.defaultSize! * 1.2,
              left: 0,
              child: IconButton(
                  iconSize: 30,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: const Color(0xFF213955),
                  icon: Icon(Icons.arrow_back))),
        ],
      ),
    );
  }
}
