import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/screen/components/custom_dua_list.dart';
import 'package:muslim_podcast/screen/components/page_title.dart'; 

class DailyDua extends StatelessWidget {
  const DailyDua({Key key}) : super(key: key);
  static const String routeName = '/daily_dua';
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20.0),
            child: Column(
              children: [
                // first column
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   PageTitle('Daily Dua'),
                    Container(child: Icon(FontAwesomeIcons.cog),
                    padding: EdgeInsets.only(bottom:15.0),
                    )
                  ],
                ),
                SizedBox(height: 25.0,), 
                // third column Menu
                CustomDuaList('/daily_dua_details')

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation()
    );
  }
}
