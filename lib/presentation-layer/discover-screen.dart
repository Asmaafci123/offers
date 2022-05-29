import 'package:flutter/material.dart';
class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(image: AssetImage('assets/images/logo.jpg'),),
      ),
    );
  }
}
