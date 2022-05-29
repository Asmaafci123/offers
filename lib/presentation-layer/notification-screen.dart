import 'package:flutter/material.dart';

import '../size.dart';
import 'custom_widgets/notification-item.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return  Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          appBar: AppBar(
            backgroundColor: const Color(0xFFFFFFFF),
            title: Text(
              'Notifications',
              style: TextStyle(
                  color: const Color(0xFF213955),
                  fontSize: SizeConfig.defaultSize!*2.4,
                  fontWeight: FontWeight.w400
              ),
            ),
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                color: const Color(0xFF213955),
                size: SizeConfig.defaultSize!*2.6,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(
                SizeConfig.defaultSize!*2,
                SizeConfig.defaultSize!*2,
                SizeConfig.defaultSize!*2, 0),
            child: ListView.separated(
                itemBuilder: (context,index)=>NotificationItem(),
                separatorBuilder: (context,index)=> SizedBox(
                  height: SizeConfig.defaultSize!*1,
                ),
                itemCount: 20),
          )
      );
  }
}
