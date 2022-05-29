import 'package:flutter/material.dart';

import 'custom_widgets/bottomcontainer.dart';
import 'custom_widgets/custom_button.dart';
import 'custom_widgets/custom_textformfield.dart';
class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding:EdgeInsets.only(
            left: MediaQuery.of(context).size.width*0.06,
            right: MediaQuery.of(context).size.width*0.06,
            top: MediaQuery.of(context).size.height*0.03
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             const Center(child: Image(image: AssetImage('assets/images/logo.jpg'),)),
             Row(
               children: [
                 CustomTextFormField(numberOfLines:1,width: 0.16,height: 0.07, focusNode: focusNode1, hintText: '+966',sufIcon: false,),
                 SizedBox(
                   width: MediaQuery.of(context).size.width*0.01,
                 ),
                 CustomTextFormField(numberOfLines:1,width: 0.7,height: 0.07,focusNode: focusNode2, hintText: 'Phone number',sufIcon: false,)
               ],
             ),
             SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
             CustomTextFormField(numberOfLines:1,width: 0.88,height: 0.07, focusNode: focusNode3, hintText: 'Password',sufIcon:true,),
             Row(
             children: [
               const Spacer(),
               TextButton(
                   onPressed: (){}, child:Text(
                   'Forgot password!',
                 style: TextStyle(
                   color: Colors.grey,
                   fontSize: MediaQuery.of(context).size.width*0.04,
                   fontFamily: 'Poppins'
                 ),
               )),
             ],
           ),
              CustomButton(text: 'Sign In', color: const Color(0xFF3AB44E), textColor: Colors.white,width: 0.88,function: (){},),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              CustomButton(text: 'Sign In with Facebook', color: Colors.transparent, textColor: Color(0xFF213955),width: 0.88, function: () {  },),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              CustomButton(text: 'Sign In with Google+', color: Colors.transparent, textColor: Color(0xFF213955),width: 0.88, function: () {  },),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                    'You don\'t have an account?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: MediaQuery.of(context).size.width*0.04,
                        fontFamily: 'Poppins'
                    ),
                  ),
                  TextButton(
                      onPressed: (){}, child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color:const Color(0xFF3AB44E),
                        fontSize: MediaQuery.of(context).size.width*0.045,
                        fontFamily: 'Poppins'
                    ),
                  )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.02,
              ),
              CustomBottomContainer(color: const Color(0xFF3AB44E), width:0.38),
              SizedBox(
                height: MediaQuery.of(context).size.height*0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
