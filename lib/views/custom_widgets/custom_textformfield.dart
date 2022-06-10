import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:spicy/size.dart';

class CustomTextFormField extends StatefulWidget {
  final double width;
  final FocusNode focusNode;
  final String hintText;
  final bool sufIcon;
  final double height;
  final int numberOfLines;
  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  CustomTextFormField(
      {required this.width,
      required this.focusNode,
      required this.hintText,
      required this.sufIcon,
      required this.height,
      required this.numberOfLines,
      this.validator,
      required this.controller});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      // height: widget.height, make field with the same height
      child: TextFormField(
        controller: widget.controller,
        textAlignVertical: TextAlignVertical.center,
        maxLines: widget.numberOfLines,
        focusNode: widget.focusNode,
        validator: widget.validator,
        keyboardType:
            widget.hintText == 'Phone number' || widget.hintText == '+20'
                ? TextInputType.phone
                : TextInputType.text,
        decoration: InputDecoration(
            errorStyle: const TextStyle(height: 0), //decrease space under field
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: SizeConfig.defaultSize! * 0.1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                width: SizeConfig.defaultSize! * 0.1,
                color: const Color(0xFF3AB44E),
              ),
            ),
            hintText: widget.hintText,
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: widget.focusNode.hasFocus
                    ? const Color(0xFF3AB44E)
                    : const Color(0xFFBDBDBD),
                fontSize: 12),
            hintStyle: TextStyle(
                fontFamily: 'Montserrat',
                color: const Color(0xFFBDBDBD),
                fontSize: MediaQuery.of(context).size.width * 0.035,
                fontWeight: FontWeight.w500),
            isDense: true,
            suffixIcon: widget.sufIcon == true
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        obscure = !obscure;
                      });
                    },
                    icon: obscure == false
                        ? const Image(image: AssetImage('assets/icons/eye.png'))
                        : const Image(
                            image: AssetImage('assets/icons/hide.png')))
                : null),
      ),
    );
  }
}
