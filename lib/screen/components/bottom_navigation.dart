
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Color(AppColor.kWhite),
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home'
           ),
           BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.users),
             label: 'User'
             
           ),
            BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.user),
             label: 'User'
           ),
           BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.book),
             label: 'Book'
           ),
           BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.star),
             label: 'Star'
           )
         ],
         
         currentIndex: 0,
         selectedItemColor: Colors.black,
         unselectedItemColor: Colors.black,
      );
  }
}