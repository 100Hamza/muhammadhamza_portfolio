import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/custom_text_button.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/rectangle_button.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';

class NavBar {
  Widget deskTopNav(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextButton(
          message: 'Go to ${DataValues.navBarAboutMe} section',
          buttonText: DataValues.navBarAboutMe,
          onPress: () {
              Scrollable.ensureVisible(KeyHolders.aboutMeKey.currentContext!,
                duration: const Duration(milliseconds: 1000),
              );},
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.023,
        ),
        CustomTextButton(
            message: 'Go to ${DataValues.navBarEducation} section',
            buttonText: DataValues.navBarEducation,
            onPress: () {
              Scrollable.ensureVisible(KeyHolders.educationKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
              );
            }),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.023,
        ),
        CustomTextButton(
            message: 'Go to ${DataValues.navBarExperience} section',
            buttonText: DataValues.navBarExperience,
            onPress: () {
              Scrollable.ensureVisible(KeyHolders.experienceKey.currentContext!,
              duration: const Duration(milliseconds: 1000),
              );
            }),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.023,
        ),
        CustomTextButton(
            message: 'Link Will Updated Soon',
            buttonText: DataValues.navBarTechNotes,
            onPress: () {}),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.023,
        ),
        RectangleButton(
            message: 'Go to ${DataValues.navBarContactMe} section',
            buttonText: DataValues.navBarContactMe,
            onPress: () {
              Scrollable.ensureVisible(KeyHolders.contactMeKey.currentContext!,
              duration: const Duration(milliseconds: 1000)
              );
            },
            color: AppThemeData.buttonPrimary)
      ],
    );
  }

}
