import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spicy/presentation-layer/custom_widgets/title-of-appbar.dart';

import '../../size.dart';
class WeeklyOffersAppBar extends StatefulWidget implements PreferredSizeWidget{
  WeeklyOffersAppBar ({Key? key}) : preferredSize = Size.fromHeight(60.0), super(key: key);

  @override
  final Size preferredSize;
  @override
  State<WeeklyOffersAppBar> createState() => _WeeklyOffersAppBarState();
}

class _WeeklyOffersAppBarState extends State<WeeklyOffersAppBar> {
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
        icon: Icon(
          Icons.arrow_back_rounded,
          color: const Color(0xFF213955),
        ),
        iconSize: SizeConfig.defaultSize! * 2.5,
      ),
      centerTitle: true,
      title: TitleOfAppBar(title:'Weekly Offers'),
      actions: [
        IconButton(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
          constraints:const BoxConstraints(),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/filter.svg',
            color: const Color(0xFF213955),
            height:SizeConfig.defaultSize! * 3,
            width:SizeConfig.defaultSize! * 3 ,
          ),
        ),
        IconButton(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
          constraints:const BoxConstraints(),
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
            color: const Color(0xFF213955),
            height:SizeConfig.defaultSize! * 2.4 ,
            width:SizeConfig.defaultSize! * 2.4 ,
          ),
        ),
      ],
    );
  }
}
