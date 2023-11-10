import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/edu_custom_card.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';



class DeskTopExperience extends StatelessWidget {
  double padding;
  DeskTopExperience({super.key , this.padding =40});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      key: KeyHolders.experienceKey,
      padding: EdgeInsets.all(padding),
      child: Column(
        children: [
          PairCustomText(
            context: context,
              isPadding: true,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.justify,
              title: DataValues.experienceTitle,
              description: DataValues.experienceDescription,
              descriptionStyle: AppThemeData.darkTheme.textTheme.titleSmall,
              titleStyle: AppThemeData.darkTheme.textTheme.displaySmall,
              )
              .text(),

          SizedBox(height: size.height * 0.04,),
          Wrap(
            runSpacing: 20,
            children: [
            SizedBox(
                width: 280,
                child: EducationCars(imageName: 'hamza8', cardTitle: DataValues.appDeveloper, degreeName: DataValues.currentJob, completionDate: DataValues.currentJobDate,isBorder: true,isViewMoreButton: true, url: DataValues.linkedinURL)),
            SizedBox(width: size.width * 0.03,),
            SizedBox(
                width: 280,
                child: EducationCars(imageName: 'logo1', cardTitle: DataValues.startup1, degreeName: DataValues.startup1Position, completionDate: DataValues.startup1Date, isBorder: true,isViewMoreButton: true, url: DataValues.healthGuardianUrl)),
            SizedBox(width: size.width * 0.03,),
            SizedBox(
                width: 280,
                child: EducationCars(imageName: 'logo2', cardTitle: DataValues.startup2, degreeName: DataValues.startup2Position, completionDate: DataValues.startup2Date, isBorder: true,isViewMoreButton: true, url: DataValues.mediGuideUrl)),
          ],)
        ],
      ),
    );
  }
}
