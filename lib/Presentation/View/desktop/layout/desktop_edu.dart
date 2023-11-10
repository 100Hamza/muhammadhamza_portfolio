import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/edu_custom_card.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';


class DesktopEducation extends StatelessWidget {
  const DesktopEducation({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      key: KeyHolders.educationKey,
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          PairCustomText(
            isPadding: true,
            context: context,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.justify,
              title: DataValues.educationTitle,
              description: DataValues.educationDescription,
              descriptionStyle: AppThemeData.darkTheme.textTheme.titleSmall,
              titleStyle: AppThemeData.darkTheme.textTheme.displaySmall,
              )
              .text(),

          SizedBox(height: size.height * 0.03,),
          Wrap(
            runSpacing: 20,
            children: [
            SizedBox(
                width: 430,
                child: EducationCars(imageName: 'school', cardTitle: DataValues.schoolAddress, degreeName: DataValues.educationOrg1Course1Name, completionDate: DataValues.educationOrg1Course1Year,)),
            SizedBox(width: size.width * 0.03,),
            SizedBox(
                width: 430,
                child: EducationCars(imageName: 'college', cardTitle: DataValues.collegeAddress, degreeName: DataValues.educationOrg1Course2Name, completionDate: DataValues.collegeYear,)),
            SizedBox(width: size.width * 0.03,),
            SizedBox(
                width: 430,
                child: EducationCars(imageName: 'kust', cardTitle: DataValues.uniAddress, degreeName: DataValues.educationOrg2Course1Name, completionDate: DataValues.educationOrg2Course1Year,)),
          ],)
        ],
      ),
    );
  }
}
