import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ButtonIcon{
  final Uri url;
  final String icon;
  double height , width;
  ButtonIcon({required this.url ,required this.icon , this.height = 30.0 , this.width = 30.0});

  Widget returnButton (){
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () async{
          if(!await launchUrl(url))
            {
              throw 'Could not lunch $url';
            }
          log('Directed to $url');
        },
        child: Tooltip(
          message: url.toString(),
          child: Image.asset('assets/icons/$icon.png' , width: width, height: height,),
        ),
      ),
    );
  }

  }
