import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/views/custom_widgets/main-button.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: SizeConfig.defaultSize! * 27,
        child: Column(children: [
          Container(
            height: SizeConfig.defaultSize! * 20,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('assets/images/img2.png'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 1.5,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.defaultSize! * 1, 0, SizeConfig.defaultSize! * 1, 0),
            child: Row(
              children: [
                Text(
                  'Visa',
                  style: TextStyle(
                      color: Color(0xFF213955),
                      fontSize: SizeConfig.defaultSize! * 2.5,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                CustomButton(
                    height: SizeConfig.defaultSize! * 3.5,
                    color: const Color(0xFF3AB44E),
                    text: 'Active',
                    textColor: const Color(0xFFFFFFFF),
                    width: SizeConfig.defaultSize! * 11,
                    function: () {})
              ],
            ),
          )
        ]),
      ),
    );
  }
}
