import 'package:flutter/material.dart';
import 'package:muslim_podcast/screen/home.dart';
import 'package:muslim_podcast/screen/scholars.dart';

class GenerateRoute{
  static Route <dynamic> generateRoute(RouteSettings settings){
    var args = settings.arguments;
    var routeName = settings.name;

    switch(routeName){
      case Home.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=>Home());
      break;
      case Scholars.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=>Scholars());
      break;
    }
  }
}