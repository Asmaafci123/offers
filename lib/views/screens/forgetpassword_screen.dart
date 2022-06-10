import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/views/screens/verification-password-screen.dart';

import '../custom_widgets/main-button.dart';
import '../custom_widgets/custom_textformfield.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF3AB44E),
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.05,
            right: MediaQuery.of(context).size.width * 0.05,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    color: const Color(0xFF3AB44E),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Please enter your Mobile so we can help you recover your password.',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    color: const Color(0xFF8F9BB3),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Row(
                children: [
                  // CustomTextFormField(
                  //   numberOfLines: 1,
                  //   width: 0.16,
                  //   height: 0.07,
                  //   focusNode: focusNode1,
                  //   hintText: '+966',
                  //   sufIcon: false,
                  // ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.01,
                  ),
                  // CustomTextFormField(
                  //   numberOfLines: 1,
                  //   width: 0.7,
                  //   height: 0.07,
                  //   focusNode: focusNode2,
                  //   hintText: 'Phone number',
                  //   sufIcon: false,
                  // )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomButton(
                height: SizeConfig.defaultSize! * 4.5,
                text: 'Next',
                color: const Color(0xFF3AB44E),
                textColor: Colors.white,
                width: 0.88,
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VerificationPasswordScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
