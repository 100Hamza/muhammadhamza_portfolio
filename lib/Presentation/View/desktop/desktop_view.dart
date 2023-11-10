import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desk_top_header.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desktop_about_me.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desktop_contect_me.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desktop_edu.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desktop_exp.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desktop_footer.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        const DesktopHeader(),
        DeskTopAboutMe(),
        DesktopEducation(),
        DeskTopExperience(),
        DeskTopContactMe(),
        const DesktopFooter()
      ],
    );
  }
}
