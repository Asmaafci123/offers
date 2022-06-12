import 'package:flutter/material.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/custom_widgets/alert-dialog.dart';
import 'package:spicy/views/screens/languages-screen.dart';
import 'package:spicy/views/screens/my-account-screen.dart';
import 'package:spicy/views/screens/my-cards-screen.dart';
import '../../size.dart';
import '../screens/about-company-screen.dart';
import '../screens/contact-us-screen.dart';
import '../screens/favourite_screen.dart';
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
          children: [
            SizedBox(
              height: SizeConfig.defaultSize! * 20,
              child: const Image(
                image: AssetImage('assets/images/logo.jpg'),
              ),
            ),
            ReusableListTile(
                imgPath: 'assets/icons/my-account.png',
                title: 'My Account',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(AppRoutes.myAccountScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/favourite.png',
                title: 'Favourite',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(AppRoutes.favouriteScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/my-card.png',
                title: 'My Cards',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushNamed(AppRoutes.myCardsScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/payment-methods.png',
                title: 'Payment Methods',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(AppRoutes.paymentMethodsScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/languages.png',
                title: 'Languages',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(AppRoutes.languagesScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/about-us.png',
                title: 'About Company',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(AppRoutes.aboutCompanyScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/contact-us.png',
                title: 'Contact Us',
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context)
                      .pushNamed(AppRoutes.contactUsScreenRoute);
                }),
            ReusableListTile(
                imgPath: 'assets/icons/logout.png',
                title: 'Log Out',
                onTap: () {
                  Navigator.pop(context);
                  showDialog<void>(
                    context: context,
                    builder: (BuildContext dialogContext) {
                      return CustomAlertDialog(
                        option1: 'NO',
                        option2: 'YES',
                        title: 'Logging out',
                        body: const Text('Are you sure?'),
                        padding: SizeConfig.defaultSize! * 5,
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
