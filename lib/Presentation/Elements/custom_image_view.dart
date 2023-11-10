
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../theme/app_theme.dart';

class CustomImageView{
  String imageName;
  double radius , height, width;
  bool isBorder;
  CustomImageView({required this.imageName , this.radius = 10 , required this.height, required this.width , this.isBorder = false});

  Widget container(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: isBorder?3:0 , color: isBorder ? Colors.white38: Colors.transparent),
      ),
      child: Container(
        height: 120,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(image: AssetImage('assets/images/$imageName.png' ,), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }

}