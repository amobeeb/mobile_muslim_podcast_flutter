import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/page_title.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class Scholars extends StatelessWidget {
  const Scholars({Key key}) : super(key: key);
  static const String routeName = '/scholars';
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
                    PageTitle('Scholars Podcast'),
                    Container(
                      child: Icon(FontAwesomeIcons.cog),
                      padding: EdgeInsets.only(bottom: 15.0),
                    )
                  ],
                ),
                SizedBox(
                  height: 25.0,
                ),
                // second column
                Container(
                  width: 350,
                  height: 700,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) =>
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/scholar_playlist');
                          },
                                                  child: new Container( 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                 color: Colors.green,
                              ),
                             
                              child: new Center(
                                child: new CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: new Text('$index'),
                                ),
                              )),
                        ),
                    staggeredTileBuilder: (int index) =>
                        new StaggeredTile.count(2, index.isEven ? 2.5 : 2),
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(AppColor.kWhite),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.users), label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), label: 'User'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.book), label: 'Book'),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.star), label: 'Star')
        ],
        currentIndex: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}
