import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/screen/components/bottom_navigation.dart';
import 'package:muslim_podcast/screen/scholar/components/scholars_icon.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class ScholarDetails extends StatelessWidget {
  final scholar;
  const ScholarDetails({Key key, this.scholar}) : super(key: key);
  static const  String routeName = '/scholar_details';
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
              title: ScholarsIcons(),
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
             height: kSize.height,
             decoration: BoxDecoration(
               color: Colors.black,
                
             ),
             child: Container(
               height: 300,
               decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(30.0),
                 topRight: Radius.circular(30.0)
               )
             ),
               child: Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Column(
                   children: [
                     Text(scholar.fullname.toUpperCase(), maxLines: 1, textAlign: TextAlign.center, style: Theme.of(context).textTheme.headline2.copyWith(fontWeight:FontWeight.w500),),
                     Text(scholar.bio, textAlign: TextAlign.justify, style: Theme.of(context).textTheme.bodyText1.copyWith(fontWeight: FontWeight.w400),),
                   ],
                 ),
               ),
             ),
            ),
          ),
           
        ],
      ),
      bottomNavigationBar: BottomNavigation(currentIndex:1, routeName: '/scholar_playlist',)
    );
  }
}
 
