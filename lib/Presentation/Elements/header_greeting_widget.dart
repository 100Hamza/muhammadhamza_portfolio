import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/profile_animated_image.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/social_profiles.dart';
import 'package:muhammad_hamza.dev/Presentation/View/responsive/Layout/responsive_body.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class HeadingGreetingWidget{

  double width;
  TextAlign? textAlign;
  BuildContext context;
  HeadingGreetingWidget({this.width = 40.0, this.textAlign , required this.context});

  List<Widget> headerData (){
    return [
      const ProfileImageAnimated(),
      SizedBox(width: width,),
      Column(
        children: [
          const SizedBox(height: 50,),
        DefaultTextStyle(
          style: AppThemeData.darkTheme.textTheme.headlineSmall ?? const TextStyle(),
          child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
            WavyAnimatedText(DataValues.headerGreetings),
          ]),
        ),
        SelectableText(
          DataValues.appDeveloper,
          textAlign: TextAlign.center,
          style: ResponsiveBody.isDesktop(context) ? AppThemeData.darkTheme.textTheme.displayMedium : TextStyle(
            fontSize: Theme.of(context).textTheme.displaySmall!.fontSize,
            fontWeight: Theme.of(context).textTheme.displaySmall!.fontWeight,
          ),
        ),
        AnimatedTextKit(
            pause: const Duration(seconds: 3),
            repeatForever: true,
            animatedTexts: [
          TyperAnimatedText(
            curve: Curves.bounceInOut,
            textStyle: ResponsiveBody.isDesktop(context) ? AppThemeData.darkTheme.textTheme.titleLarge : TextStyle(
              fontSize: Theme.of(context).textTheme.titleMedium!.fontSize,
              color: AppThemeData.textGreyDark
            ),
             speed: const Duration(milliseconds: 120),
              DataValues.headerTitle),
        ]),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),
          const SocialProfiles()
      ],)

    ];
  }

}