import 'package:flutter/material.dart';
import 'package:spicy/views/custom_widgets/checkbox.dart';
import 'package:spicy/size.dart';

import '../custom_widgets/main-button.dart';
import '../custom_widgets/custom_textformfield.dart';
import '../custom_widgets/dropdown-list.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  @override
  List<String> countries = [
    'Afghanestan',
    'American Samoa',
    'Andorra',
    'Angola',
    'Anguilla',
    'Brasil',
    'Canada',
    'Colombia',
    '	Egypt',
  ];
  List<String> cities = [
    'Assiut',
    'Cairo',
    'Alxandria',
    'Minya',
    'Fayoum',
    'Mansoura',
    'Assiut',
    'Cairo',
    'Alxandria',
    'Minya',
    'Fayoum',
    'Mansoura',
  ];
  @override
  void initState() {
    focusNode1 = FocusNode();
    focusNode2 = FocusNode();
    focusNode3 = FocusNode();
    focusNode4 = FocusNode();
    controller1 = TextEditingController();
    controller2 = TextEditingController();
    controller3 = TextEditingController();
    controller4 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    focusNode1.dispose();
    focusNode2.dispose();
    focusNode3.dispose();
    focusNode4.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color(0xFF3AB44E),
              ))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.defaultSize! * 3,
              right: SizeConfig.defaultSize! * 3,
              top: SizeConfig.defaultSize! * 3),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create New Account',
                style: TextStyle(
                    fontSize: SizeConfig.defaultSize! * 2.8,
                    color: const Color(0xFF3AB44E),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: SizeConfig.defaultSize! * 2,
              ),
              CustomTextFormField(
                controller: controller1,
                numberOfLines: 1,
                width: SizeConfig.defaultSize! * 36,
                focusNode: focusNode1,
                hintText: 'Full name',
                sufIcon: false,
                height: SizeConfig.defaultSize! * 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              CustomTextFormField(
                controller: controller2,
                numberOfLines: 1,
                width: SizeConfig.defaultSize! * 36,
                focusNode: focusNode1,
                hintText: 'Password',
                sufIcon: false,
                height: SizeConfig.defaultSize! * 5,
              ),
              SizedBox(
                height: SizeConfig.defaultSize!,
              ),
              Row(
                children: [
                  CustomTextFormField(
                    controller: controller3,
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
                  CustomTextFormField(
                    controller: controller4,
                    numberOfLines: 1,
                    width: SizeConfig.defaultSize! * 27.6,
                    height: SizeConfig.defaultSize! * 5,
                    focusNode: focusNode2,
                    hintText: 'Phone number',
                    sufIcon: false,
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              DropDownList(
                items: countries,
                hintText: 'Country',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              DropDownList(
                items: cities,
                hintText: 'City',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  const CheckBox(),
                  Text(
                    'i agree to the',
                    style: TextStyle(
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width * 0.035),
                  ),
                  TextButton(
                      onPressed: () => showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              title: const Text(
                                'terms and conditions',
                                style: TextStyle(color: Color(0xFF3AB44E)),
                              ),
                              content: const Text(
                                  'The information provided on the Application is not intended for distribution to or use by any person or entity in any jurisdiction or country where such distribution or use would be contrary to law or regulation or which would subject us to any registration requirement within such jurisdiction or country.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, 'Cancel'),
                                  child: const Text(
                                    'Cancel',
                                    style: TextStyle(color: Color(0xFF3AB44E)),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text(
                                    'OK',
                                    style: TextStyle(color: Color(0xFF3AB44E)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                      child: Text(
                        'terms and conditions',
                        style: TextStyle(color: const Color(0xFF3AB44E)),
                      ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.045,
              ),
              CustomButton(
                height: SizeConfig.defaultSize! * 4.5,
                text: 'Sign Up',
                color: const Color(0xFF3AB44E),
                textColor: Colors.white,
                width: SizeConfig.defaultSize! * 36,
                function: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
