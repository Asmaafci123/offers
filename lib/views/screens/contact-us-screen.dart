import 'package:flutter/material.dart';
import 'package:spicy/views/custom_widgets/custom-appbar.dart';
import 'package:spicy/views/custom_widgets/custom_textformfield.dart';
import '../../size.dart';
import '../custom_widgets/main-button.dart';
import '../custom_widgets/custom_textformfield.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  late FocusNode focusNode1;
  late FocusNode focusNode2;
  late FocusNode focusNode3;
  late FocusNode focusNode4;
  late TextEditingController controller1;
  late TextEditingController controller2;
  late TextEditingController controller3;
  late TextEditingController controller4;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: CustomAppBar(
          title: 'Contact Us',
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 3,
                SizeConfig.defaultSize! * 3, SizeConfig.defaultSize! * 3, 0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Get in Touch',
                    style: TextStyle(
                        color: const Color(0xFF3AB44E),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.defaultSize! * 2.3),
                  ),
                  SizedBox(height: SizeConfig.defaultSize! * 0.5),
                  Text(
                    'Contact us for any question you have in your mind',
                    style: TextStyle(
                        color: const Color(0xFFA3A3A3),
                        fontWeight: FontWeight.w300,
                        fontSize: SizeConfig.defaultSize! * 1.5),
                  ),
                  SizedBox(height: SizeConfig.defaultSize! * 3),
                  CustomTextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    controller: controller1,
                    numberOfLines: 1,
                    width: SizeConfig.screenWidth!,
                    height: SizeConfig.defaultSize! * 5,
                    focusNode: focusNode1,
                    hintText: 'Full name',
                    sufIcon: false,
                  ),
                  SizedBox(height: SizeConfig.defaultSize! * 1),
                  CustomTextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    controller: controller2,
                    numberOfLines: 1,
                    width: SizeConfig.screenWidth!,
                    height: SizeConfig.defaultSize! * 5,
                    focusNode: focusNode2,
                    hintText: 'Email',
                    sufIcon: false,
                  ),
                  SizedBox(height: SizeConfig.defaultSize! * 1),
                  CustomTextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    controller: controller3,
                    numberOfLines: 1,
                    width: SizeConfig.screenWidth!,
                    height: SizeConfig.defaultSize! * 5,
                    focusNode: focusNode3,
                    hintText: 'Phone number',
                    sufIcon: false,
                  ),
                  SizedBox(height: SizeConfig.defaultSize! * 1),
                  CustomTextFormField(
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return '';
                      }
                      return null;
                    },
                    controller: controller4,
                    numberOfLines: 5,
                    width: SizeConfig.screenWidth!,
                    height: SizeConfig.defaultSize! * 15,
                    focusNode: focusNode4,
                    hintText: 'Message',
                    sufIcon: false,
                  ),
                  SizedBox(height: SizeConfig.defaultSize! * 5),
                  CustomButton(
                    height: SizeConfig.defaultSize! * 4.5,
                    text: 'SEND MESSAGE',
                    color: const Color(0xFF3AB44E),
                    textColor: Colors.white,
                    width: SizeConfig.screenWidth!,
                    function: () {
                      _formKey.currentState!.validate();
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
