import 'package:flutter/material.dart';
import 'package:spicy/size.dart';

class DropDownList extends StatefulWidget {
  final List<String> items;
  final String hintText;
  DropDownList({required this.items, required this.hintText});
  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * 7,
      width: SizeConfig.defaultSize! * 36,
      child: DropdownButtonFormField(
          decoration: InputDecoration(
              hintText: widget.hintText,
              enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.defaultSize! * 2),
                  borderSide:
                      BorderSide(width: SizeConfig.defaultSize! * 0.03)),
              focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(SizeConfig.defaultSize! * 2),
                  borderSide:
                      BorderSide(width: SizeConfig.defaultSize! * 0.03))),
          icon: const Icon(Icons.keyboard_arrow_down_outlined),
          value: selectedValue,
          items: widget.items.map((value) {
            return DropdownMenuItem<String>(child: Text(value), value: value);
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          }),
    );
  }
}
