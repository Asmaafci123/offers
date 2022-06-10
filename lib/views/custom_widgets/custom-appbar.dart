import 'package:flutter/material.dart';

import '../../Bussiness_layer/app-cubit.dart';
import '../../size.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  CustomAppBar({Key? key, required this.title})
      : preferredSize = Size.fromHeight(60.0),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFFFFFFFF),
      title: Text(
        widget.title,
        style: TextStyle(
            color: const Color(0xFF213955),
            fontSize: SizeConfig.defaultSize! * 2.4,
            fontWeight: FontWeight.w400),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
          color: const Color(0xFF213955),
          size: SizeConfig.defaultSize! * 2.6,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
