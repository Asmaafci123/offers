import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/reset-password-screen.dart';

import 'custom_widgets/custom_button.dart';
import 'custom_widgets/custom_textformfield.dart';
class VerificationPasswordScreen extends StatefulWidget {
  const VerificationPasswordScreen({Key? key}) : super(key: key);

  @override
  _VerificationPasswordScreenState createState() => _VerificationPasswordScreenState();
}

class _VerificationPasswordScreenState extends State<VerificationPasswordScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: (){},
              icon:const Icon(Icons.arrow_back_rounded,color:Color(0xFF3AB44E),)
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width*0.05,
            right: MediaQuery.of(context).size.width*0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Text(
                'Verification',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.07,
                    color: const Color(0xFF3AB44E),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400
                ),
              ),
              Text(
                'Enter the OTP code from the phone we just sent you.',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.035,
                    color: const Color(0xFF8F9BB3),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.08,
              ),
              Row(
                children: [
                  CustomTextFormField(numberOfLines:1,width: 0.19, focusNode: focusNode1, hintText: '',sufIcon: false,height: 0.09,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  CustomTextFormField(numberOfLines:1,width: 0.19, focusNode: focusNode2, hintText: '',sufIcon: false,height: 0.09,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  CustomTextFormField(numberOfLines:1,width: 0.19, focusNode: focusNode3, hintText: '',sufIcon: false,height: 0.09,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.03,
                  ),
                  CustomTextFormField(numberOfLines:1,width: 0.19, focusNode: focusNode4, hintText: '',sufIcon: false,height: 0.09,),

                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Didn’t receive OTP code!',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.width*0.04,
                        fontFamily: 'Poppins'
                    ),
                  ),
                  TextButton(
                      onPressed: (){}, child: Text(
                    'Resend',
                    style: TextStyle(
                        color:const Color(0xFF3AB44E),
                        fontSize: MediaQuery.of(context).size.width*0.045,
                        fontFamily: 'Poppins'
                    ),
                  )),
                ],
              ),
              CustomButton(text: 'Submit', color: const Color(0xFF3AB44E), textColor: Colors.white,width: 0.88, function: () {  Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen())); },),
            ],
          ),
        ),
      ),
    );
  }
}
