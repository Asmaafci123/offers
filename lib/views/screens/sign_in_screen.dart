import 'package:flutter/material.dart';
import 'package:spicy/size.dart';
import 'package:spicy/utilities/routes.dart';

import '../custom_widgets/bottomcontainer.dart';
import '../custom_widgets/main-button.dart';
import '../custom_widgets/custom_textformfield.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 3,
              right: SizeConfig.defaultSize! * 3,
              top: SizeConfig.defaultSize! * 3),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                    child: Image(
                  image: AssetImage('assets/images/logo.jpg'),
                )),
                Row(
                  children: [
                    CustomTextFormField(
                      controller: controller1,
                      numberOfLines: 1,
                      width: SizeConfig.defaultSize! * 7,
                      height: SizeConfig.defaultSize! * 5,
                      focusNode: focusNode1,
                      hintText: '+20',
                      sufIcon: false,
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize!,
                    ),
                    Expanded(
                      child: CustomTextFormField(
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        numberOfLines: 1,
                        controller: controller2,
                        width: SizeConfig.defaultSize! * 25,
                        height: SizeConfig.defaultSize! * 5,
                        focusNode: focusNode2,
                        hintText: 'Phone number',
                        sufIcon: false,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: SizeConfig.defaultSize!,
                ),
                CustomTextFormField(
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return '';
                    }
                    return null;
                  },
                  controller: controller3,
                  numberOfLines: 1,
                  width: SizeConfig.defaultSize! * 36,
                  height: SizeConfig.defaultSize! * 5,
                  focusNode: focusNode3,
                  hintText: 'Password',
                  sufIcon: true,
                ),
                Row(
                  children: [
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.forgetPasswordScreenRoute);
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: SizeConfig.defaultSize! * 1.7,
                              fontFamily: 'Poppins'),
                        )),
                  ],
                ),
                CustomButton(
                  height: SizeConfig.defaultSize! * 4.5,
                  text: 'Sign In',
                  color: const Color(0xFF3AB44E),
                  textColor: Colors.white,
                  width: SizeConfig.defaultSize! * 36,
                  function: () {
                    _formKey.currentState!.validate();
                  },
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
                CustomButton(
                  height: SizeConfig.defaultSize! * 4.5,
                  text: 'Sign In with Facebook',
                  color: Colors.white.withOpacity(0.8),
                  textColor: const Color(0xFF213955),
                  width: SizeConfig.defaultSize! * 36,
                  function: () {},
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
                CustomButton(
                  height: SizeConfig.defaultSize! * 4.5,
                  text: 'Sign In with Google+',
                  color: Colors.white.withOpacity(0.8),
                  textColor: const Color(0xFF213955),
                  width: SizeConfig.defaultSize! * 36,
                  function: () {},
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'You don\'t have an account?',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          fontFamily: 'Poppins'),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: const Color(0xFF3AB44E),
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.045,
                              fontFamily: 'Poppins'),
                        )),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
                CustomBottomContainer(
                    color: const Color(0xFF3AB44E),
                    width: SizeConfig.defaultSize! * 10),
                SizedBox(
                  height: SizeConfig.defaultSize! * 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
