import 'package:flutter/material.dart';

import '../size.dart';
import 'custom_widgets/favourite-item.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          'Favourite',
          style: TextStyle(
              color: const Color(0xFF213955),
              fontSize: SizeConfig.defaultSize!* 2.4,
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
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(SizeConfig.defaultSize! * 1.6,
            SizeConfig.defaultSize! *4, SizeConfig.defaultSize! * 1.6, 0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context,index)=>FavouriteItem(),
                  separatorBuilder:(context,index) =>SizedBox(height:SizeConfig.defaultSize! * 2,),
                  itemCount: 15,
    ),
            ),
          ],
        ),
      ));
  }
}
