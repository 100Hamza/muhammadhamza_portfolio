import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';


import '../../../Elements/personal_detail.dart';

class Biography extends StatelessWidget {
  const Biography({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: PairCustomText(
            context: context,
              title: DataValues.aboutMeBiographyTitle,
              description: DataValues.aboutMeBiographyDescription,
              descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
              titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
              )
              .text(),
        ),
        SizedBox(width: size.width * 0.08),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: PersonalDetails(context: context).personalDetails1()
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: PersonalDetails(context: context).personalDetails2()
          ),
        ),
      ],
    );
  }
}
