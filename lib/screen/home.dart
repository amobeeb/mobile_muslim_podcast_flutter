import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);
  static const String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    GreetingsAndSolatAlert(),
                    Container(child: Icon(FontAwesomeIcons.cog),
                    padding: EdgeInsets.only(bottom:15.0),
                    )
                  ],
                ),
                SizedBox(height: 25.0,),
                // second column 
                DailyQuote(),

                // third column Menu
                MenuGridView()

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}


class GreetingsAndSolatAlert extends StatelessWidget {
  const GreetingsAndSolatAlert({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Its about time for Solat', style: Theme.of(context).textTheme.bodyText2),
        Text('As-Salam Alaekum', style: Theme.of(context).textTheme.headline1),
      ],
    );
  }
}


class DailyQuote extends StatelessWidget {
  const DailyQuote({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   var kSize = MediaQuery.of(context).size;
    return Container(
      height: kSize.height * 0.2,
      width: kSize.width,
      decoration: BoxDecoration(
        color: Color(AppColor.kSecondaryColor),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ramadan: ', style: Theme.of(context).textTheme.bodyText1.copyWith(color: Color(AppColor.kWhite)),),
                Text('Day 1', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.w500, color: Color(AppColor.kWhite))),
              ],
            ),
            SizedBox(height: 50,),
            Text('"The bravest heart is the one that stays close to Allah (God), even, when it\'s in pain "',   textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1.copyWith(
             color: Color(AppColor.kWhite)
            )),
          ]),
      ));
  }
}

class MenuGridView extends StatelessWidget {
  const MenuGridView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var kSize = MediaQuery.of(context).size;
    return Container(
         width: kSize.width,
          child: Row(
              children: [
                // column one 
                Column(
                children: [
                  buildMenuContainer(context, kSize, 0.43, 0.25),
                  SizedBox(height: 5.0,),
                   buildMenuContainer(context, kSize, 0.43, 0.3),
                ],
              ),
              SizedBox(width:10.0),
              // column two 
               Column(
                children: [
                 buildMenuContainer(context, kSize, 0.43, 0.3),
                  SizedBox(height: 5.0,),
                   buildMenuContainer(context, kSize, 0.43, 0.25),
                ],
              )
              
              ]
          )
    );
  }

  Widget buildMenuContainer(context, Size kSize, double width, double height) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.only(top:5.0, bottom: 5.0,),
                   height: kSize.height * height,
                    width: kSize.width * width,
                    decoration: BoxDecoration(
                      color: Colors.red,
                       borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: kSize.width * 0.2,
                          child: Text('Scholars Podcast', style: Theme.of(context).textTheme.headline2.copyWith(fontWeight: FontWeight.w500),)),
                          SizedBox(height: kSize.height * 0.1,),
                          Align(
                            alignment:Alignment.bottomRight, 
                          child: Icon(FontAwesomeIcons.users))
                      ],
                    ),
                );
  }
}