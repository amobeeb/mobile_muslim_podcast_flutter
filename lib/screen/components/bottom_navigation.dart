
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class BottomNavigation extends StatefulWidget {
  final currentIndex;
  final routeName;
  const BottomNavigation({Key key, this.currentIndex, this.routeName}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0;
    return BottomNavigationBar(
        backgroundColor: Color(AppColor.kWhite),
         items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.home),
             label: 'Home'
           ),
           BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.users),
             label: 'Scholars' 
             
           ),
            BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.user),
             label: 'Hadith'
           ),
           BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.book),
             label: 'Quran'
           ),
           BottomNavigationBarItem(
             icon: Icon(FontAwesomeIcons.star),
             label: 'Dua'
           )
         ],
         
         currentIndex: _selectedIndex,
         selectedItemColor: Colors.black,
         unselectedItemColor: Colors.black,
         onTap: (int index){
          
           setState(() {
             _selectedIndex = index;
           });
            debugPrint(_selectedIndex.toString());
           switch(index){
             case 0:
              Navigator.pushNamed(context, '/home');
              break;
               case 1:
              Navigator.pushNamed(context, '/scholars');
              break;
              default:
              Navigator.pushNamed(context, widget.routeName);
              break;
           }
          
         },
      );
  }
}