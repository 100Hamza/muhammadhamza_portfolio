import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/layout/mob_about_me.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/layout/mob_contact_me.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/layout/mob_edu.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/layout/mob_exp.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/layout/mob_footer.dart';
import 'package:muhammad_hamza.dev/Presentation/View/mobile/layout/mob_top_header.dart';


class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: const [
        MobileTopHeader(),
        MobileAboutMe(),
        MobileEducation(),
        MobileExperience(),
        MobileContactMe(),
        MobileFooter()
      ],
    );
  }
}
