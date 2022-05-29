import 'package:flutter/material.dart';
import 'package:spicy/presentation-layer/my-account-screen.dart';
import '../../size.dart';
import '../about-company-screen.dart';
import '../contact-us-screen.dart';
import '../favourite_screen.dart';
import 'list-tile.dart';

class NavDrawer extends StatefulWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  State<NavDrawer> createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * 28,
      child: Drawer(
        backgroundColor: const Color(0xFFFFFFFF),
        child: ListView(
          children:[
           SizedBox(
             height:SizeConfig.defaultSize! * 20,
            child: const Image(
               image: AssetImage('assets/images/logo.jpg'),
             ),
            ),
            ReusableListTile(
              imgPath: 'assets/icons/my-account.png',
              title: 'My Account',
              onTap:(){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>MyAccountScreen()
                ));
              }),
            ReusableListTile(imgPath: 'assets/icons/favourite.png', title: 'Favourite',onTap:(){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>FavouriteScreen()
              ));
            }),
            ReusableListTile(imgPath: 'assets/icons/my-card.png', title: 'My Cards',onTap:(){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>MyAccountScreen()
              ));
            }),
            ReusableListTile(imgPath: 'assets/icons/payment-methods.png', title: 'Payment Methods',onTap:(){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>MyAccountScreen()
              ));
            }),

            ReusableListTile(imgPath: 'assets/icons/about-us.png', title: 'About Company',onTap:(){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>AboutCompanyScreen()
              ));
            }),
            ReusableListTile(imgPath: 'assets/icons/contact-us.png', title: 'Contact Us',onTap:(){
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>ContactUsScreen()
              ));
            }),
            ReusableListTile(
                imgPath: 'assets/icons/logout.png',
                title: 'Log Out',
                onTap:(){
                  Navigator.pop(context);
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext dialogContext) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        title: const Text('Logging out'),
                        content: const Text('Are you sure?'),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('NO',style: TextStyle(
                              color:Color(0xFF213955)
                            ),),
                            onPressed: () {
                              Navigator.of(dialogContext)
                                  .pop(); // Dismiss alert dialog
                            },
                          ),
                          TextButton(
                            child: const Text('YES',style: TextStyle(
                                color:Color(0xFF213955)
                            ),),
                            onPressed: () {
                              Navigator.of(dialogContext)
                                  .pop(); // Dismiss alert dialog
                            },
                          ),
                        ],
                      );
                    },
                  );
                }),
          ],
        ),
      ),
    );
  }
}
