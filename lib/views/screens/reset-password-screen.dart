import 'package:flutter/material.dart';
import 'package:spicy/size.dart';

import '../custom_widgets/main-button.dart';
import '../custom_widgets/custom_textformfield.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late TextEditingController controller1;
  late TextEditingController controller2;
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    controller1.dispose();
    controller2.dispose();
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
                'Reset Password',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.07,
                    color: const Color(0xFF3AB44E),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              Text(
                'Enter your new password and confirm.',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.035,
                    color: const Color(0xFF8F9BB3),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Column(
                children: [
                  CustomTextFormField(
                    controller: controller1,
                    numberOfLines: 1,
                    width: 0.88,
                    height: 0.07,
                    focusNode: focusNode1,
                    hintText: 'New Password',
                    sufIcon: true,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  CustomTextFormField(
                    controller: controller2,
                    numberOfLines: 1,
                    width: 0.88,
                    height: 0.07,
                    focusNode: focusNode2,
                    hintText: 'Confirm New Password',
                    sufIcon: true,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              CustomButton(
                height: SizeConfig.defaultSize! * 4.5,
                text: 'Done',
                color: const Color(0xFF3AB44E),
                textColor: Colors.white,
                width: 0.88,
                function: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
