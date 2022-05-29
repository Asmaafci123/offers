import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class CustomTextFormField extends StatefulWidget {
  final double width;
  final FocusNode focusNode;
  final String hintText;
  final bool sufIcon;
  final double height;
  final int numberOfLines;
  CustomTextFormField({required this.width,required this.focusNode,required this.hintText,required this.sufIcon,required this.height,required this.numberOfLines});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscure=true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*widget.width,
      height: MediaQuery.of(context).size.height*widget.height,
        child: TextFormField(
          textAlignVertical: TextAlignVertical.center,
          maxLines: widget.numberOfLines,
          focusNode: widget.focusNode,
          keyboardType:widget.hintText=='Phone number'||widget.hintText=='+966'? TextInputType.phone:TextInputType.text,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(
                    width: 0.7),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(
                  width: 0.7, color:const Color(0xFF3AB44E),),
              ),
              hintText:widget.hintText ,
              labelStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: widget.focusNode.hasFocus ? const Color(0xFF3AB44E) : const Color(0xFFBDBDBD),
                  fontSize: 12
              ),
              hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  color: const Color(0xFFBDBDBD),
                  fontSize: MediaQuery.of(context).size.width * 0.035,
                fontWeight: FontWeight.w500
              ),
              isDense: true,
            suffixIcon: widget.sufIcon==true?
            IconButton(
                onPressed:(){
                  setState(() {
                   obscure=!obscure;
                  });
                },
                icon: obscure==false?const Image(image:AssetImage('assets/icons/eye.png')):
               const Image(image:AssetImage('assets/icons/hide.png'))
            ):
            null
          ),
        //  obscureText: obscure==true?true:false,
      ),
    );
  }
}
