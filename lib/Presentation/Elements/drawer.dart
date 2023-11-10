
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/custom_text_button.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/rectangle_button.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';

class MobileNavBar{
  BuildContext context;
  MobileNavBar({required this.context});

  Widget header()
  {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      color: AppThemeData.backgroundGrey,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.015,
          ),
          const CircleAvatar(
            backgroundColor: AppThemeData.secondaryColor,
            radius: 65,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/hamza1.png'),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.015,
          ),
          Text(
            DataValues.appDeveloper,
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: AppThemeData.darkTheme.textTheme.titleLarge?.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
      Text(
        DataValues.headerTitle,
        style: AppThemeData.darkTheme.textTheme.labelLarge,
      )
        ]
      ),
    );
  }

  Widget mobDrawer()
  {
    return Drawer(
      semanticLabel: 'What is this',
        backgroundColor: AppThemeData.backgroundBlack,
      child: Column(
        children: [
          header(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.015,
                ),
              CustomTextButton(
                message: 'Go to ${DataValues.navBarAboutMe} section',
                buttonText: DataValues.navBarAboutMe,
                onPress: () {
                  Scrollable.ensureVisible(KeyHolders.aboutMeKey.currentContext!,
                    duration: const Duration(milliseconds: 1000),
                  );
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              CustomTextButton(
                  message: 'Go to ${DataValues.navBarEducation} section',
                  buttonText: DataValues.navBarEducation,
                  onPress: () {
                    Scrollable.ensureVisible(KeyHolders.educationKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                    );
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              CustomTextButton(
                  message: 'Go to ${DataValues.navBarExperience} section',
                  buttonText: DataValues.navBarExperience,
                  onPress: () {
                    Scrollable.ensureVisible(KeyHolders.experienceKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                    );
                    Navigator.pop(context);
                  }),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              CustomTextButton(
                  message: 'Section Will Available Soon',
                  buttonText: DataValues.navBarTechNotes,
                  onPress: () {}),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.015,
              ),
              RectangleButton(
                  message: 'Go to ${DataValues.navBarContactMe} section',
                  buttonText: DataValues.navBarContactMe,
                  onPress: () {
                    Scrollable.ensureVisible(KeyHolders.contactMeKey.currentContext!,
                        duration: const Duration(milliseconds: 1000)
                    );
                    Navigator.pop(context);
                  },
                  color: AppThemeData.buttonPrimary)
            ],),
          )
        ],
      )
    );
  }

}