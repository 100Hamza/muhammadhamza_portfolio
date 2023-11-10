import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';


class PersonalDetails{
  BuildContext context;
  PersonalDetails({required this.context});
  List<Widget> personalDetails2(){
    var size = MediaQuery.of(context).size;
    return [
      PairCustomText(
        context: context,
        height: 2,
        title: DataValues.aboutMeLocationTitle,
        description: DataValues.aboutMeLocationDescription,
        descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
        titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
      )
          .text(),
      SizedBox(height: size.height * 0.04),
      PairCustomText(
        context: context,
        height: 2,
        title: DataValues.aboutMeWorkDomainTitle,
        description: DataValues.aboutMeWorkDomainDescription,
        descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
        titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
      )
          .text(),
      SizedBox(height: size.height * 0.04),
      PairCustomText(
        context: context,
          height: 2,
          title: DataValues.aboutMeHobbiesTitle,
          description: DataValues.aboutMeHobbiesDescription,
          descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
          titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
          textAlign: TextAlign.start
      )
          .text(),
      SizedBox(height: size.height * 0.015),
      PairCustomText(
          context: context,
          height: 2,
          title: DataValues.aboutMeGoalTitle,
          description: DataValues.aboutMeGoalDescription,
          descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
          titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
          textAlign: TextAlign.start
      )
          .text(),
      SizedBox(height: size.height * 0.04),
    ];
  }

  List<Widget> personalDetails1(){
    var size = MediaQuery.of(context).size;
    return [
      PairCustomText(
        context: context,
        height: 2,
        title: DataValues.aboutMeFullNameTitle,
        description: DataValues.aboutMeFullNameDescription,
        descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
        titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
      )
          .text(),
      SizedBox(height: size.height * 0.04),
      PairCustomText(
        context: context,
        height: 2,
        title: DataValues.aboutMeGenderTitle,
        description: DataValues.aboutMeGenderDescription,
        descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
        titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
      )
          .text(),
      SizedBox(height: size.height * 0.04),
      PairCustomText(
        context: context,
        height: 2,
        title: DataValues.aboutMeDobTitle,
        description: DataValues.aboutMeDobDescription,
        descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
        titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
      )
          .text(),
      SizedBox(height: size.height * 0.04),
      PairCustomText(
          context: context,
          height: 2,
          title: DataValues.aboutMeLanguageTitle,
          description: DataValues.aboutMeLanguageDescription,
          descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
          titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
          textAlign: TextAlign.start
      )
          .text(),
      SizedBox(height: size.height * 0.04),
      PairCustomText(
        context: context,
        height: 2,
        title: DataValues.aboutMeNationalityTitle,
        description: DataValues.aboutMeNationalityDescription,
        descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
        titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
      )
          .text(),
      SizedBox(height: size.height * 0.04),

    ];
  }
}