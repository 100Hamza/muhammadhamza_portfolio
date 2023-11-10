import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/header_greeting_widget.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';


class MobileTopHeader extends StatefulWidget {
  const MobileTopHeader({super.key});

  @override
  State<MobileTopHeader> createState() => _MobileTopHeaderState();
}

class _MobileTopHeaderState extends State<MobileTopHeader> {
  @override

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppThemeData.backgroundBlack,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: HeadingGreetingWidget(context: context).headerData()
              ,),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

          ],

        ),
      ),
    );
  }
}
