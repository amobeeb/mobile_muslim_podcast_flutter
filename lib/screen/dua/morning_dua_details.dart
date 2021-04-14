import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/screen/components/page_title.dart';

class MorningDuaDetails extends StatelessWidget {
  const MorningDuaDetails({Key key}) : super(key: key);
  static const String routeName = '/morning_dua_details';
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   PageTitle('Daily Dua'),
                    Container(child: Icon(FontAwesomeIcons.cog),
                    padding: EdgeInsets.only(bottom:15.0),
                    )
                  ],
                ),
          ],
        ),
      ),
        bottomNavigationBar: BottomNavigation()
    );
  }
}