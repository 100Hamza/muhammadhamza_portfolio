import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/personal_detail.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';

class MobileBioGraphy extends StatelessWidget {
  const MobileBioGraphy({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PairCustomText(
          context: context,
          title: DataValues.aboutMeBiographyTitle,
          description: DataValues.aboutMeBiographyDescription,
          descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
          titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
        )
            .text(),
        SizedBox(height: size.height * 0.05),
        Row(
          children: [
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
        )
      ],
    );
  }
}
