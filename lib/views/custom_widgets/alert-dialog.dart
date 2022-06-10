import 'package:flutter/material.dart';
import 'package:spicy/size.dart';

class CustomAlertDialog extends StatelessWidget {
  final String option1;
  final String option2;
  final String title;
  final Widget body;
  final double padding;
  CustomAlertDialog(
      {required this.option1,
      required this.option2,
      required this.title,
      required this.body,
      required this.padding});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.all(padding),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text(title),
      content: body,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextButton(
              child: Text(
                option1,
                style: const TextStyle(color: Color(0xFF213955)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text(
                option2,
                style: const TextStyle(color: Color(0xFF213955)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ],
    );
  }
}
