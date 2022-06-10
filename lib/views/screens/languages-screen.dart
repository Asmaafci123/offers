import 'package:flutter/material.dart';
import 'package:spicy/views/custom_widgets/custom-appbar.dart';
import 'package:spicy/views/custom_widgets/main-button.dart';
import 'package:spicy/views/custom_widgets/dropdown-list.dart';
import 'package:spicy/size.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> languages = [
      'Arabic',
      'English',
    ];
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: CustomAppBar(
        title: 'Languages',
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: SizeConfig.defaultSize! * 3,
            right: SizeConfig.defaultSize! * 3,
            top: SizeConfig.defaultSize! * 3),
        child: Column(
          children: [
            DropDownList(
              items: languages,
              hintText: 'Language',
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 15,
            ),
            CustomButton(
                height: SizeConfig.defaultSize! * 4.5,
                color: const Color(0xFF3AB44E),
                text: 'SAVE',
                textColor: const Color(0xFFFFFFFF),
                width: SizeConfig.defaultSize! * 36,
                function: () {})
          ],
        ),
      ),
    );
  }
}
