import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/header_greeting_widget.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/nav_bar.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';



class DesktopHeader extends StatelessWidget {
  const DesktopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0, bottom: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: HeadingGreetingWidget(context: context).headerData()
            ,),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.06),
            NavBar().deskTopNav(context)
          ],

        ),
      ),
    );
  }
}
