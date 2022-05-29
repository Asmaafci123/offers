import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spicy/presentation-layer/find-job.dart';
import '../presentation-layer/custom_widgets/appbar-find-jobs.dart';
import '../presentation-layer/custom_widgets/home-appbar.dart';
import '../presentation-layer/custom_widgets/store-appbar.dart';
import '../presentation-layer/custom_widgets/weekly-offers-appbar.dart';
import '../presentation-layer/home.dart';
import '../presentation-layer/store.dart';
import '../presentation-layer/weekly-offers.dart';
import 'app-states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());
  static AppCubit get(context)=>BlocProvider.of(context);
  String currentLanguage='English';
  void changeCurrentLanguage(String lan)
  {
    currentLanguage=lan;
    emit(ChangeLanguageState());
  }
  int currentPage=0;
  List<Widget>screens=[
    Home(),
    WeeklyOffersScreen(),
    StoreScreen(),
    FindJobScreen(),
  ];
  List<PreferredSizeWidget>appBars=[
    HomeAppBar(),
    WeeklyOffersAppBar(),
    StoreAppBar(),
    FindJobsAppBar(),
  ];
  void changeNavigationBar(int index)
  {
    currentPage=index;
    emit(ChangeNavigationBarState());
  }
  int indexOfIndexedStack=0;
  void changeIndexOfIndexedStack(int index)
  {
    indexOfIndexedStack=index;
    emit(ChangeIndexOfIndexedStackState());
  }
  var scaffoldKey = GlobalKey<ScaffoldState>();
}