import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../Bussiness_layer/app-cubit.dart';
import '../../Bussiness_layer/app-states.dart';
import '../../size.dart';
import 'main-button.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    var _languages = [
      "Arabic",
      "Spanish",
      "English",
      "Hindi",
      "Japanese",
      "Turkish",
    ];
    final _formKey = GlobalKey<FormState>();
    // var _currentLanguage=_languages[0];

    var appCubit = AppCubit.get(context);
    return Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          title: Text(
            'Language',
            style: TextStyle(
                color: const Color(0xFF213955),
                fontSize: SizeConfig.defaultSize! * 2.4,
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
        body: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 2,
              SizeConfig.defaultSize! * 2, SizeConfig.defaultSize! * 2, 0),
          child: BlocConsumer<AppCubit, AppStates>(
            listener: (context, state) {},
            builder: (context, state) {
              return Column(
                children: [
                  Form(
                    key: _formKey,
                    child: InputDecorator(
                        decoration: InputDecoration(),
                        isEmpty: appCubit.currentLanguage == '',
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                            icon: Icon(Icons.keyboard_arrow_down_rounded),
                            value: appCubit.currentLanguage,
                            isDense: true,
                            onChanged: (String? newValue) {
                              setState(() {
                                appCubit.changeCurrentLanguage(newValue!);
                              });
                            },
                            items: _languages.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize! * 10,
                  ),
                  CustomButton(
                    height: SizeConfig.defaultSize! * 4.5,
                    text: 'Save',
                    textColor: const Color(0xFFFFFFFF),
                    width: 50,
                    color: const Color(0xFF3AB44E),
                    function: () {},
                  )
                ],
              );
            },
          ),
        ));
  }
}
