import 'package:flutter/material.dart';
import '../size.dart';
import 'custom_widgets/custom_button.dart';
import 'custom_widgets/custom_textformfield.dart';
class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: Text(
            'Contact Us',
            style: TextStyle(
                color: const Color(0xFF213955),
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_rounded,
              color: const Color(0xFF213955),
              size: MediaQuery.of(context).size.width * 0.062,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.defaultSize!*2,
                SizeConfig.defaultSize!*2,
                SizeConfig.defaultSize!*2,
                0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Get in Touch',
                  style: TextStyle(
                      color: const Color(0xFF3AB44E),
                      fontWeight: FontWeight.w400,
                      fontSize: SizeConfig.defaultSize!*2.3
                  ),
                ),
                SizedBox(
                    height:SizeConfig.defaultSize!*0.5
                ),
                Text(
                  'Contact us for any question you have in your mind',
                  style: TextStyle(
                      color: const Color(0xFFA3A3A3),
                      fontWeight: FontWeight.w300,
                      fontSize: SizeConfig.defaultSize! * 1.5
                  ),
                ),
                SizedBox(
                    height:SizeConfig.defaultSize!*3
                ),
                CustomTextFormField(numberOfLines:1,width: SizeConfig.screenWidth!,height: 0.07, focusNode: focusNode1, hintText: 'Full name',sufIcon:false,),
                SizedBox(
                    height:SizeConfig.defaultSize!*1
                ),
                CustomTextFormField(numberOfLines:1,width: SizeConfig.screenWidth!,height: 0.07, focusNode: focusNode1, hintText: 'Email',sufIcon:false,),
                SizedBox(
                    height:SizeConfig.defaultSize!*1
                ),
                CustomTextFormField(numberOfLines:1,width: SizeConfig.screenWidth!,height: 0.09, focusNode: focusNode2, hintText: 'Phone number',sufIcon: false,),
                SizedBox(
                    height:SizeConfig.defaultSize!*1
                ),
                CustomTextFormField(numberOfLines:5,width: SizeConfig.screenWidth!,height: 0.2, focusNode: focusNode1, hintText: 'Message',sufIcon:false,),
                SizedBox(
                  height:SizeConfig.defaultSize!*5
                ),
                CustomButton(text: 'SEND MESSAGE', color: const Color(0xFF3AB44E), textColor: Colors.white,width: SizeConfig.screenWidth!, function: () { },),
              ],
            ),
          ),
        ));
  }
}
