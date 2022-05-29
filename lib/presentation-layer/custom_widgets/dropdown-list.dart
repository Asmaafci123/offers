import 'package:flutter/material.dart';
class DropDownList extends StatefulWidget {
  final List<String>items;
  DropDownList({required this.items});
  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:  MediaQuery.of(context).size.height*0.09,
      width:MediaQuery.of(context).size.width*0.88,
      child:DropdownButtonFormField(
          decoration: InputDecoration(
              hintText:'Country',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      width: 0.3
                  )
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                      width: 0.3
                  )
              )
          ),
          icon: Icon(Icons.keyboard_arrow_down_outlined),
          value: selectedValue,
          items: widget.items.map((value) {
            return DropdownMenuItem<String>(
                child: Text(value), value: value);
          }).toList(),
          onChanged:(value){
            setState(() {
              selectedValue=value as String;
            });
          }
      ),
    );
  }
}
