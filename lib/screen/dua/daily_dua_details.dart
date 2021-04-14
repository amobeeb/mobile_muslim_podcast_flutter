import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/screen/components/page_title.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class DailyDuaDetails extends StatelessWidget {
  const DailyDuaDetails({Key key}) : super(key: key);
static const String routeName = '/daily_dua_details';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Daily Dua', ),
        backwardsCompatibility: false,
        backgroundColor: Color(AppColor.kWhite),
        foregroundColor: Color(AppColor.kBlack),
        elevation: 0,
        actions: [Container(margin: EdgeInsets.only(right:20),
        child: Icon(FontAwesomeIcons.cog))],
      ),
        body: SingleChildScrollView(
    child: Container(
       margin: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Row(
             children: [
               Text('01 ', 
                      style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w100),),
                      Text('Hello WOrld', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w400),),
             ],
           ),
           SizedBox(height:30),
           Text('Transliteration', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w500),),
           Text('Transliteration',  style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight:FontWeight.w100),),
           SizedBox(height:20),
           Text('Translation',  style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w500),),
           Text('Translation', style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight:FontWeight.w100),),
           SizedBox(height:20),
           Text('Benefit', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w500),),
           Text('Benefit', style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight:FontWeight.w100),),
           SizedBox(height:20),
           Text('Reference', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w500),),
           Text('Reference', style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight:FontWeight.w100),),
        ],
      ),
    ),
        ),
    bottomNavigationBar: BottomNavigation()
      );
  }
}