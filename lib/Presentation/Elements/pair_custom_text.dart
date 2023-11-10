import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/View/responsive/Layout/responsive_body.dart';

class PairCustomText {
  BuildContext context;
  String title, description;
  TextStyle? titleStyle, descriptionStyle;
  TextAlign textAlign;
  CrossAxisAlignment crossAxisAlignment;
  double height;
  bool isPadding;
  PairCustomText(
      {required this.title,
      required this.description,
      required this.titleStyle,
      required this.descriptionStyle,
      this.textAlign = TextAlign.justify,
        this.crossAxisAlignment = CrossAxisAlignment.start ,
        this.height = 10,
      required this.context,
        this.isPadding = false,
      });

  Widget text() {

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title.toString(),
          style: titleStyle,
        ),
        SizedBox(height: height,),
        Padding(
          padding: ResponsiveBody.isDesktop(context)
              ? (isPadding ? const EdgeInsets.only(
                  left: 160.0, right: 160.0, bottom: 40.0): EdgeInsets.zero)
              : EdgeInsets.zero,
          child: Text(
            description.toString(),
            style: descriptionStyle,
            textAlign: textAlign,
          ),
        ),
      ],
    );
  }
}
