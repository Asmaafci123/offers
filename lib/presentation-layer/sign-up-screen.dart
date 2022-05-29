import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_widgets/custom_button.dart';
import 'custom_widgets/custom_textformfield.dart';
import 'custom_widgets/dropdown-list.dart';
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
  List<String>countries=[
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
  List<String>cities=[
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
  bool value = false;
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
                'Create New Account',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width*0.07,
                    color: const Color(0xFF3AB44E),
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              CustomTextFormField(numberOfLines:1,width: 0.88, focusNode: focusNode1, hintText: 'Full name',sufIcon: false,height: 0.09,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              CustomTextFormField(numberOfLines:1,width: 0.88, focusNode: focusNode1, hintText: 'Password',sufIcon: false,height: 0.09,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Row(
                children: [
                  CustomTextFormField(numberOfLines:1,width: 0.16,height: 0.09, focusNode: focusNode1, hintText: '+966',sufIcon: false,),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.01,
                  ),
                  CustomTextFormField(numberOfLines:1,width: 0.71,height: 0.09, focusNode: focusNode2, hintText: 'Phone number',sufIcon: false,)
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              DropDownList(items: countries,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              DropDownList(items:cities,),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: const Color(0xFF3AB44E),
                    value: this.value,
                    onChanged: (value) {
                      setState(() {
                        this.value = value as bool;
                      });
                    },
                  ),
                  Text(
                      'i agree to the',
                    style: TextStyle(
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontSize: MediaQuery.of(context).size.width*0.035
                    ),
                  ),
                  TextButton(
                      onPressed: ()=> showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                              'terms and conditions',
                            style: TextStyle(
                              color:Color(0xFF3AB44E)
                            ),
                          ),
                          content: const Text(
                              'The information provided on the Application is not intended for distribution to or use by any person or entity in any jurisdiction or country where such distribution or use would be contrary to law or regulation or which would subject us to any registration requirement within such jurisdiction or country.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'Cancel'),
                              child: const Text('Cancel',style: TextStyle(
                                  color:Color(0xFF3AB44E)
                              ),),
                            ),
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK',style: TextStyle(
                                  color:Color(0xFF3AB44E)
                              ),),
                            ),
                          ],
                        ),
                      ),
                      child: Text(
                          'terms and conditions',
                        style: TextStyle(
                          color: const Color(0xFF3AB44E)
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.045,
              ),
              CustomButton(text: 'Sign Up', color: const Color(0xFF3AB44E), textColor: Colors.white,width: 0.88, function: () { },),
            ],
          ),
        ),
      ),
    );
  }
}
