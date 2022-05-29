import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/custom_widgets/bottomcontainer.dart';
import 'package:spicy/presentation-layer/home-screen.dart';

import '../../size.dart';
import 'custom_button.dart';
class Part2 extends StatelessWidget {
  const Part2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        color: Color(0xFF3AB44E),
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(50),
            topRight: Radius.circular(50),
          ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(text: 'Sign Up', color: Colors.transparent, textColor: Colors.white,width: SizeConfig.defaultSize! *13, function: () {  },),
              SizedBox(
                width: SizeConfig.defaultSize! * 2,
              ),
              CustomButton(text: 'Sign In', color: Colors.white, textColor:  const Color(0xFF3AB44E),width: SizeConfig.defaultSize! * 13, function: () {  },),

            ],
          ),
          SizedBox(
            height: SizeConfig.defaultSize! * 2,
          ),
         GestureDetector(
           onTap: (){
             Navigator.push(context,MaterialPageRoute(
               builder: (context)=>HomeScreen()
             ));
           },
           child: Text('Skip',style: TextStyle(
                color: Colors.white,
                fontSize:SizeConfig.defaultSize! * 2,
                fontWeight: FontWeight.w600
            ),),
         ),
        ],
      ),
    );
  }
}
