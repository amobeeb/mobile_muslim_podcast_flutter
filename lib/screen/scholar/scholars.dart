import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/repo/scholars_repo.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/screen/components/page_title.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class Scholars extends StatelessWidget {
  const Scholars({Key key}) : super(key: key);
  static const String routeName = '/scholars';
  @override
  Widget build(BuildContext context) {
    Size kSize = MediaQuery.of(context).size;
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
                  width: kSize.width,
                  height: kSize.height * 0.7,
                  child: StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: scholars.length,
                    itemBuilder: (BuildContext context, int index) =>
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, '/scholar_playlist', arguments: scholars[index]);
                          },
                                                  child: new Container( 
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                 image: DecorationImage(
                                   image: NetworkImage(scholars[index].picture),
                                   fit: BoxFit.cover
                                 )
                              ),
                             
                              // child: new Center(
                              //   child: new CircleAvatar(
                              //     backgroundColor: Colors.white,
                              //     child: new Text('$index'),
                              //   ),
                              // )
                              ),
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
      bottomNavigationBar: BottomNavigation(currentIndex:1, routeName: '/scholars')
    );
  }
}
