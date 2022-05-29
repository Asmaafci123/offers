import 'package:flutter/material.dart';

import '../size.dart';
import 'custom_widgets/item-of-jobs.dart';
class FindJobScreen extends StatelessWidget {
  const FindJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          SizeConfig.defaultSize! * 1.6,
          SizeConfig.defaultSize! *2,
          SizeConfig.defaultSize! * 1.6,0),
      child: ListView.builder(
        itemBuilder: (context,index)=>ItemOfJobs(),
        itemCount: 10,
      ),
    );
  }
}
