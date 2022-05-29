import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spicy/Bussiness_layer/app-cubit.dart';
import 'package:spicy/Bussiness_layer/app-states.dart';
import 'custom_widgets/bottom-navigation-bar.dart';
import 'custom_widgets/nav-drawer.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,AppStates>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
            key: AppCubit.get(context).scaffoldKey,
            drawer: const NavDrawer(),
            appBar:AppCubit.get(context).appBars[AppCubit.get(context).currentPage],
            body: AppCubit.get(context).screens[AppCubit.get(context).currentPage],
            bottomNavigationBar:CustomBottomNavigationBar()
        );
      },
    );
  }
}
