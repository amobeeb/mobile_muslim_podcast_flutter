import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class ScholarPlaylistDetails extends StatelessWidget {
  const ScholarPlaylistDetails({Key key}) : super(key: key);
static const  String routeName = '/scholar_playlist_details';
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
             height: kSize.height * 0.8,
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30.0),
                 topRight: Radius.circular(30.0)
               )
             ),
             child: Container(
              
               padding: const EdgeInsets.symmetric(vertical:5.0, horizontal: 20.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text('Sheik Farouk Onikijipa', maxLines: 1, textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight:FontWeight.w300),),
                   Text('Iwo Omokewu Alfa', maxLines: 1, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline1.copyWith(fontWeight:FontWeight.w500),),
                   Text('New April, 2021', textAlign: TextAlign.center, style: Theme.of(context).textTheme.bodyText1,),
                    Container(
                      child: Column(
                        children: [
                          Text('Episode Shownotes', style: Theme.of(context).textTheme.bodyText1),
                          Text('lorem ipsum ireseum lorem ipsum ireseum lorem ipsum ireseum lorem ipsum ireseum lorem ipsum ireseum lorem ipsum ireseum lorem ipsum ireseum lorem ipsum ireseum ', style: Theme.of(context).textTheme.bodyText2)
                        ],
                      ),
                    )
                 ],
               ),
             ),
            ),
          ),
          
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