import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class ViewMoreButton extends StatelessWidget {
  Uri url;
  ViewMoreButton({super.key , required this.url});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Visit ${url.toString()}',
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: InkWell(
          onTap: () async{
            if (!await launchUrl(url)) {
            throw 'Could not launch $url';
            }
            log("Direct to: $url");
          },
          child: Text('View More >> ' , style: Theme.of(context).textTheme.labelMedium,),
        ),
      ),
    );
  }
}
