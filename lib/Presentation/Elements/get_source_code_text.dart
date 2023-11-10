import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';
import 'package:url_launcher/url_launcher.dart';

class GetSourceCodeText extends StatelessWidget {
  const GetSourceCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: (){
          launchUrl(DataValues.repoURL);
        },
        child: Tooltip(
          message: 'Get Source Code From ${DataValues.repoURL.toString()}',
          child: Text(
            'Get Source Code',
            style: TextStyle(
              color: AppThemeData.textPrimary,
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
              fontWeight: Theme.of(context).textTheme.bodyMedium!.fontWeight,
            ),
          ),
        ),
      ),
    );
  }
}
