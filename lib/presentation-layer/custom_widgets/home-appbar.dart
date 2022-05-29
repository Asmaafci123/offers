import 'package:flutter/material.dart';

import '../../Bussiness_layer/app-cubit.dart';
import '../../size.dart';

class HomeAppBar extends StatefulWidget implements PreferredSizeWidget{
  HomeAppBar({ Key? key}) : preferredSize = Size.fromHeight(60.0), super(key: key);

  @override
  final Size preferredSize;
  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  final Size preferredSize = Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFFFFFFFF),
      leadingWidth: SizeConfig.defaultSize! * 15, //width of row widget
      centerTitle: true,
      leading: Row(
        children: [
          IconButton(
            padding: EdgeInsets.all(SizeConfig.defaultSize! * 0.7),
            constraints: BoxConstraints(),
            onPressed: () {},
            icon: const Icon(
              Icons.location_on_rounded,
              color:Color(0xFF213955),
            ),
            iconSize: SizeConfig.defaultSize! * 2.2,
          ),
          Text(
            'Egypt Assiut',
            style: TextStyle(
                color: const Color(0xFF213955),
                fontSize: SizeConfig.defaultSize! * 1.8,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
      title: Image(
        image: const AssetImage('assets/images/logo.jpg'),
        height: SizeConfig.defaultSize! * 8,
      ),
      actions: [
        IconButton(
          //  padding: const EdgeInsets.all(3.0),
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: Color(0xFF213955),
          ),
          iconSize: SizeConfig.defaultSize! * 2.5,
        ),
        IconButton(
          // padding: const EdgeInsets.all(3.0),
          constraints: BoxConstraints(),
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            color:Color(0xFF213955),
          ),
          iconSize: SizeConfig.defaultSize! * 2.5,
        ),
        IconButton(
          //  padding: const EdgeInsets.all(3.0),
          constraints: BoxConstraints(),
          onPressed: () async{
            if ( AppCubit.get(context).scaffoldKey.currentState!.isDrawerOpen) {
              AppCubit.get(context).scaffoldKey.currentState!.openEndDrawer();
            } else {
              AppCubit.get(context).scaffoldKey.currentState!.openDrawer();
            }
          //  AppCubit.get(context).scaffoldKey.currentState!.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color:  Color(0xFF213955),
          ),
          iconSize: SizeConfig.defaultSize! * 2.5,
        ),
      ],
    );
  }
}
