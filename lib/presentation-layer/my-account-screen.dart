import 'package:flutter/material.dart';

import '../size.dart';
import 'custom_widgets/card-my-account.dart';
import 'custom_widgets/custom_button.dart';
class MyAccountScreen extends StatelessWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          'My Account',
          style: TextStyle(
              color: const Color(0xFF213955),
              fontSize: SizeConfig.defaultSize!* 2.4,
              fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: const Color(0xFF213955),
            size: SizeConfig.defaultSize! * 2.6,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
                SizeConfig.defaultSize! *4, SizeConfig.defaultSize! * 1.6, 0),
            child: Column(
              children: [
                CardMyAccount(title: 'Full Name',val: 'Asmaa S.',),
                SizedBox(
                  height: SizeConfig.defaultSize!*1,
                ),
                CardMyAccount(title: 'Password',val: '1234567',),
                SizedBox(
                  height: SizeConfig.defaultSize!*1,
                ),
                CardMyAccount(title: 'Phone',val: '01020304050',),
                SizedBox(
                  height: SizeConfig.defaultSize!*1,
                ),
                CardMyAccount(title: 'Email',val: 'asmaasedeek636@gmail.com',),
                SizedBox(
                  height: SizeConfig.defaultSize!*1,
                ),
                CardMyAccount(title: 'Address',val: 'Assuit',),
                SizedBox(
                  height: SizeConfig.defaultSize!*8,
                ),
                CustomButton(text: 'Save', color:const Color(0xFF3AB44E), textColor:const Color(0xFFFFFFFF),width: SizeConfig.screenWidth!, function: () {  },),
              ],
            )
        ),
      ),
    );
  }
}
