import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:spicy/Bussiness_layer/app-cubit.dart';

class CustomBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return FluidNavBar(
      style: const FluidNavBarStyle(
          barBackgroundColor: Color(0xFF3AB44E),
          iconUnselectedForegroundColor: Color(0xFF213955),
          iconSelectedForegroundColor: Color(0xFFFFFFFF)),
      icons: [
        FluidNavBarIcon(svgPath: 'assets/icons/home.svg'),
        FluidNavBarIcon(svgPath: 'assets/icons/weekly-offers.svg'),
        FluidNavBarIcon(svgPath: 'assets/icons/store.svg'),
        FluidNavBarIcon(svgPath: 'assets/icons/find-job.svg'),
      ],
      onChange: (int index)=>AppCubit.get(context).changeNavigationBar(index),
    );
  }
}
