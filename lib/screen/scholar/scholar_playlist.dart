import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/repo/scholars_repo.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/screen/scholar/components/scholars_icon.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class ScholarPlaylist extends StatelessWidget {
  final scholar;
  const ScholarPlaylist({Key key, this.scholar}) : super(key: key);
  static const  String routeName = '/scholar_playlist';
  @override
  Widget build(BuildContext context) {
    Size kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: kSize.height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              title: Container(
                  width: 150,
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ScholarsIcons(icon:FontAwesomeIcons.search, iconFunction:(){}),
                                ScholarsIcons(icon:FontAwesomeIcons.infoCircle, iconFunction:(){
                                  Navigator.pushNamed(context, '/scholar_details', arguments: scholar);
                                }),
                                ScholarsIcons(icon:Icons.refresh_rounded, iconFunction:(){}),
                                ScholarsIcons(icon:FontAwesomeIcons.sortNumericDown, iconFunction:(){}),
                              ],
                            ),
                ),
              background: Container(
                decoration: BoxDecoration( 
                  image: DecorationImage(
                    image: NetworkImage(scholar.picture), fit: BoxFit.cover,
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.6, 0.9],
                    colors: [Colors.transparent, Colors.black]
                  ), 
                ),
               
                
                )),
            ), 
          ),
          SliverToBoxAdapter(
            child: Container(
             height: 60,
             decoration: BoxDecoration(
               color: Colors.black,
                
             ),
             child: Container(
               decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30.0),
                 topRight: Radius.circular(30.0)
               )
             ),
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical:5.0),
                 child: Column(
                   children: [
                     Text(scholar.fullname, maxLines: 1, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2.copyWith(fontWeight:FontWeight.w500),),
                     Text('20 Playlists', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,),
                   ],
                 ),
               ),
             ),
            ),
          ),
          SliverList( 
            delegate: SliverChildBuilderDelegate (
              (BuildContext context, int index) {
                   var playlistNumber = index + 1;
                   var playlistNoToString =  playlistNumber.toString();
                    
                    
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/scholar_playlist_details');
                },
                              child: ListTile(
                  tileColor: Colors.white,
                  leading: Text('${playlistNoToString.length == 1?'0'+playlistNoToString:playlistNoToString}', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w100),),
                  title: Text(scholar.playlist[index].title, style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w400),),
                  trailing: Icon(FontAwesomeIcons.ellipsisH, color: Color(AppColor.kBlack),size: 15,),
                ),
              );
            },
            childCount: scholar.playlist.length,
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigation(currentIndex:1, routeName: '/scholar_playlist',)
    );
  }
}
 
