import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/button_icon.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';

class SocialProfiles extends StatelessWidget {
  const SocialProfiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      ButtonIcon(url: DataValues.facebookURL, icon: 'facebook').returnButton(),
      const SizedBox(width: 10.0),
      ButtonIcon(url: DataValues.instagramURL, icon: 'instagram').returnButton(),
      const SizedBox(width: 10.0),
      ButtonIcon(url: DataValues.linkedinURL, icon: 'linkedin').returnButton(),
      const SizedBox(width: 10.0),
      ButtonIcon(url: DataValues.githubURL, icon: 'github').returnButton(),
    ],);
  }
}
