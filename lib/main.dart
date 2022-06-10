import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spicy/utilities/routes.dart';
import 'package:spicy/views/screens/splach_screen.dart';

import 'Bussiness_layer/app-cubit.dart';
import 'utilities/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerate, // way of route
        initialRoute: AppRoutes.splashScreenRoute,
      ),
    );
  }
}
