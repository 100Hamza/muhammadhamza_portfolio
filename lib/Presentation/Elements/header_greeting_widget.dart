import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/profile_animated_image.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/social_profiles.dart';
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
          style: AppThemeData.darkTheme.textTheme.displayMedium,
        ),
        AnimatedTextKit(
            pause: const Duration(seconds: 3),
            repeatForever: true,
            animatedTexts: [
          TyperAnimatedText(
            curve: Curves.bounceInOut,
            textStyle: AppThemeData.darkTheme.textTheme.titleLarge,
             speed: const Duration(milliseconds: 120),
              DataValues.headerTitle),
        ]),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.035),
          const SocialProfiles()
      ],)

    ];
  }

}