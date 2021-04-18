import 'package:flutter/material.dart';
import 'package:muslim_podcast/screen/dua/daily_dua.dart';
import 'package:muslim_podcast/screen/dua/daily_dua_details.dart';
import 'package:muslim_podcast/screen/dua/dua_main.dart';
import 'package:muslim_podcast/screen/dua/evening_dua.dart';
import 'package:muslim_podcast/screen/dua/evening_dua_details.dart';
import 'package:muslim_podcast/screen/dua/morning_dua.dart';
import 'package:muslim_podcast/screen/dua/morning_dua_details.dart';
import 'package:muslim_podcast/screen/home.dart';
import 'package:muslim_podcast/screen/scholar/scholar_details.dart';
import 'package:muslim_podcast/screen/scholar/scholar_playlist.dart';
import 'package:muslim_podcast/screen/scholar/scholar_playlist_details.dart';
import 'package:muslim_podcast/screen/scholar/scholars.dart';

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
      case ScholarPlaylist.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> ScholarPlaylist(scholar: args));
      break; 
      case ScholarDetails.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> ScholarDetails(scholar: args));
      break;
      case ScholarPlaylistDetails.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> ScholarPlaylistDetails());
      break;
      case DuaMain.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> DuaMain());
      break; 
      case DailyDua.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> DailyDua());
      break;
      case DailyDuaDetails.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> DailyDuaDetails());
      break;
      case MorningDua.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> MorningDua());
      break;
      case MorningDuaDetails.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> MorningDuaDetails());
      break;
      case EveningDua.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> EveningDua());
      break;
      case EveningDuaDetails.routeName:
      return MaterialPageRoute(builder: (BuildContext context)=> EveningDuaDetails());
      break;
    }
  }
}