import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/custom_widgets/reusable-contact-info.dart';
import '../../size.dart';
import 'description-of-job.dart';
class ItemOfJobs extends StatelessWidget {
  const ItemOfJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      color: const Color(0xFFFFFFFF),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        height: SizeConfig.defaultSize! *15,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(
            SizeConfig.defaultSize! * 1,
            0, SizeConfig.defaultSize! * 1,0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage:AssetImage('assets/images/img2.png'),
              radius: SizeConfig.defaultSize! *4,
            ),
            SizedBox(
              width: SizeConfig.defaultSize! * 1,
            ),
            DescriptionOfJob()
          ],
        ),
      ),
    );
  }
}
