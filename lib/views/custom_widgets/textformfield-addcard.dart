import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spicy/size.dart';

class TextFormFieldForAddCard extends StatelessWidget {
  final TextInputFormatter maskFormatter;
  final String labelText;
  TextFormFieldForAddCard(
      {required this.maskFormatter, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        inputFormatters: [maskFormatter],
        decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Color(0xFF213955),
                  width: SizeConfig.defaultSize! * 0.08),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF213955),
              ),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
                color: const Color(0xFF213955),
                fontSize: SizeConfig.defaultSize! * 2)));
  }
}
