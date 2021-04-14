import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class ScholarPlaylist extends StatelessWidget {
  const ScholarPlaylist({Key key}) : super(key: key);
  static const  String routeName = '/scholar_playlist';
  @override
  Widget build(BuildContext context) {
    Size kSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: kSize.height * 0.4,
            flexibleSpace: FlexibleSpaceBar(
              title: ScholarsIcons(),
              background: FlutterLogo(),
            ), 
          ),
          SliverToBoxAdapter(
            child: Container(
             height: 60,
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
                   Text('Sheik Farouk Onikijipa', maxLines: 1, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2.copyWith(fontWeight:FontWeight.w500),),
                   Text('20 Playlists', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,),
                 ],
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
                  title: Text('Hello WOrld', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w400),),
                  trailing: Icon(FontAwesomeIcons.ellipsisH, color: Color(AppColor.kBlack),size: 15,),
                ),
              );
            },
            childCount: 20,
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigation()
    );
  }
}
 

 class ScholarsIcons extends StatelessWidget {
   const ScholarsIcons({Key key}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return Container(
       width: 150,
       alignment: Alignment.bottomCenter,
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    iconsStyle(FontAwesomeIcons.search),
                    iconsStyle(FontAwesomeIcons.infoCircle),
                    iconsStyle(Icons.refresh_rounded),
                    iconsStyle(FontAwesomeIcons.sortNumericDown),
                  ],
                ),
     );
   }

   Widget iconsStyle(IconData icons){
     return Icon(icons, color: Color(AppColor.kWhite), size: 10,);
   }
 }