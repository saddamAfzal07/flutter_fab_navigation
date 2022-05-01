import 'package:flutter/material.dart';
import 'package:flutter_fab_navigation/Dashboard/dashboard.dart';
import 'package:flutter_fab_navigation/constant/constant.dart';
import 'package:flutter_fab_navigation/splash_screen/splash_Screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Constants.appColor,
          appBarTheme: AppBarTheme(
            backgroundColor: Constants.lightBgColor,
            centerTitle: true,
            elevation: 0.0,
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SplashScreen(),
      ),
      designSize: const Size(360, 800),
    );
  }
}
