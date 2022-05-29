import 'package:flutter/material.dart';
class CustomPageView extends StatelessWidget {
  final PageController controller;
  final List<Widget> list;
  var currentPageNotifier;
  CustomPageView({required this.controller,required this.list,required this.currentPageNotifier});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemBuilder: (context, index) => list[index],
      itemCount:list.length,
      scrollDirection: Axis.horizontal,
      onPageChanged: (int index) {
          currentPageNotifier.value = index;
       }
    );
  }
}
