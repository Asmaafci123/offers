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
        padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
            SizeConfig.defaultSize! * 1.6, SizeConfig.defaultSize! * 1.6, 0),
        child: Column(
          children: [
            DropDownList(
              items: languages,
              hintText: 'Language',
            ),
            SizedBox(
              height: SizeConfig.defaultSize! * 10,
            ),
            CustomButton(
                color: const Color(0xFF3AB44E),
                text: 'SAVE',
                textColor: const Color(0xFFFFFFFF),
                width: SizeConfig.screenWidth!,
                height: SizeConfig.defaultSize! * 5,
                function: () {})
          ],
        ),
      ),
    );
  }
}
