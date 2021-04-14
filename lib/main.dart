import 'package:flutter/material.dart';
import 'package:muslim_podcast/screen/home.dart';
import 'package:muslim_podcast/screen/scholars.dart';
import 'package:muslim_podcast/utils/app_colors.dart';
import 'package:muslim_podcast/utils/generate_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: myTheme(context),
      initialRoute: Home.routeName,
      onGenerateRoute: GenerateRoute.generateRoute,
    );
  }

  ThemeData myTheme(context) {
    ThemeData base = ThemeData.light();
    return base.copyWith(
        primaryColor: Color(AppColor.kPrimaryColor),
        textTheme: myTextTheme(base.textTheme));
  }

  TextTheme myTextTheme(TextTheme base) {
    return base.copyWith(
      headline1: TextStyle(
          fontSize: 24.0,
          color: Color(AppColor.kPrimaryColor),
          fontWeight: FontWeight.w500),
      headline2:
          TextStyle(fontSize: 18.0, color: Color(AppColor.kPrimaryColor)),
      headline3:
          TextStyle(fontSize: 16.0, color: Color(AppColor.kPrimaryColor)),
      headline4:
          TextStyle(fontSize: 14.0, color: Color(AppColor.kPrimaryColor)),
      bodyText1:
          TextStyle(fontSize: 12.0, color: Color(AppColor.kPrimaryColor)),
      bodyText2:
          TextStyle(fontSize: 10.0, color: Color(AppColor.kPrimaryColor)),
    );
  }
}
