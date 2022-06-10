import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spicy/views/screens/find-job.dart';
import '../views/custom_widgets/appbar-find-jobs.dart';
import '../views/custom_widgets/home-appbar.dart';
import '../views/custom_widgets/store-appbar.dart';
import '../views/custom_widgets/weekly-offers-appbar.dart';
import '../views/screens/home.dart';
import '../views/screens/store.dart';
import '../views/screens/weekly-offers.dart';
import 'app-states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  String currentLanguage = 'English';
  void changeCurrentLanguage(String lan) {
    currentLanguage = lan;
    emit(ChangeLanguageState());
  }

  int currentPage = 0;
  List<Widget> screens = [
    Home(),
    WeeklyOffersScreen(),
    StoreScreen(),
    FindJobScreen(),
  ];
  List<PreferredSizeWidget> appBars = [
    HomeAppBar(),
    WeeklyOffersAppBar(),
    StoreAppBar(),
    FindJobsAppBar(),
  ];
  void changeNavigationBar(int index) {
    currentPage = index;
    emit(ChangeNavigationBarState());
  }

  int indexOfIndexedStack = 0;
  void changeIndexOfIndexedStack(int index) {
    indexOfIndexedStack = index;
    emit(ChangeIndexOfIndexedStackState());
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool checkBoxValue = false;
  void changeCheckBoxValue(bool value) {
    checkBoxValue = value;
    emit(ChangeCheckBoxValueState());
  }
}
