import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/custom_card.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/mobile_biography.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';


class MobileAboutMe extends StatefulWidget {
  const MobileAboutMe({super.key});

  @override
  State<MobileAboutMe> createState() => _MobileAboutMeState();
}

class _MobileAboutMeState extends State<MobileAboutMe> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      key: KeyHolders.aboutMeKey,
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          PairCustomText(
              context: context,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.justify,
              title: DataValues.aboutMeTitle,
              description: DataValues.aboutMeDescription,
              descriptionStyle: AppThemeData.darkTheme.textTheme.titleSmall,
              titleStyle: AppThemeData.darkTheme.textTheme.displaySmall,
              )
              .text(),
          SizedBox(height: size.height * 0.04,),
          const MobileBioGraphy(),
          SizedBox(height: size.height * 0.04,),
          Column(children: [
            CustomCard(imageName: 'student', title: DataValues.aboutMeStudentTitle, description: DataValues.aboutMeStudentDescription,),
            SizedBox(height: size.height * 0.03,),
            CustomCard(imageName: 'developer', title: DataValues.aboutMeDeveloperTitle, description: DataValues.aboutMeDeveloperDescription,),
          ],)
        ],
      ),
    );
  }
}
