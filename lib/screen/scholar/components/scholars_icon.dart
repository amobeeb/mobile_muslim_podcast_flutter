
 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:muslim_podcast/utils/app_colors.dart';

class ScholarsIcons extends StatelessWidget {
  final Function iconFunction;
  final IconData icon;
   const ScholarsIcons({Key key, this.icon, this.iconFunction}) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     
     return InkWell(
       onTap: iconFunction,
       child: Icon(icon, color: Color(AppColor.kWhite), size: 10,));
    
   }

    
 }