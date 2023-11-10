import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/custom_card.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/widget/biography.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';


class DeskTopAboutMe extends StatefulWidget {
  double padding;
  DeskTopAboutMe({super.key , this.padding = 40});

  @override
  State<DeskTopAboutMe> createState() => _DeskTopAboutMeState();
}

class _DeskTopAboutMeState extends State<DeskTopAboutMe> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      key: KeyHolders.aboutMeKey,
      padding: EdgeInsets.all(widget.padding),
      child: Column(
        children: [
          PairCustomText(
            isPadding: true,
              context: context,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.start,
              title: DataValues.aboutMeTitle,
              description: DataValues.aboutMeDescription,
              descriptionStyle: AppThemeData.darkTheme.textTheme.titleSmall,
              titleStyle: AppThemeData.darkTheme.textTheme.displaySmall,
          )
              .text(),
          SizedBox(height: size.height * 0.04,),
          const Biography(),
          SizedBox(height: size.height * 0.04,),
          Row(children: [
            Expanded(child: CustomCard(imageName: 'student', title: DataValues.aboutMeStudentTitle, description: DataValues.aboutMeStudentDescription,)),
            SizedBox(width: size.width * 0.03,),
            Expanded(child: CustomCard(imageName: 'developer', title: DataValues.aboutMeDeveloperTitle, description: DataValues.aboutMeDeveloperDescription,)),
          ],)
        ],
      ),
    );
  }
}
