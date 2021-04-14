
 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class CustomDuaList extends StatelessWidget {
     final String routeName; 
    CustomDuaList(this.routeName);
   @override
   Widget build(BuildContext context) {
     Size kSize = MediaQuery.of(context).size;
     return Container(
                  height: kSize.height,
                  child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index){
                    var playlistNumber = index + 1;
                   var playlistNoToString =  playlistNumber.toString();
                    
                    
              return InkWell(
                onTap: (){
                  Navigator.pushNamed(context, routeName);
                },
                              child: ListTile(
                  // tileColor: Colors.white,
                  leading: Text('${playlistNoToString.length == 1?'0'+playlistNoToString:playlistNoToString}', 
                  style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w100),),
                  title: Text('Hello WOrld', style: Theme.of(context).textTheme.headline3.copyWith(fontWeight:FontWeight.w400),),
                  subtitle: Text('subtitle'),
                  trailing: Icon(FontAwesomeIcons.ellipsisH, color: Color(AppColor.kBlack),size: 15,),
                ),
              ); 
                  }
                  ),
                );
   }
 }