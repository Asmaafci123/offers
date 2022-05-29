import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/custom_widgets/title-of-appbar.dart';

import '../../size.dart';
class FindJobsAppBar extends StatefulWidget implements PreferredSizeWidget{
  FindJobsAppBar ({Key? key}) : preferredSize = Size.fromHeight(60.0), super(key: key);

  @override
  final Size preferredSize;
  @override
  State<FindJobsAppBar> createState() => _FindJobsAppBarState();
}

class _FindJobsAppBarState extends State<FindJobsAppBar> {
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      leadingWidth: SizeConfig.defaultSize! * 5,
      leading: IconButton(
        padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
        constraints: BoxConstraints(),
        onPressed: () {},
        icon:const Icon(
          Icons.arrow_back_rounded,
          color: Color(0xFF213955),
        ),
        iconSize: SizeConfig.defaultSize! * 2.5,
      ),
      centerTitle: true,
      title: TitleOfAppBar(title:'Find Jobs'),
    );
  }
}
