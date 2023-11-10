import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/get_source_code_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';


class DesktopFooter extends StatelessWidget {
  const DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppThemeData.backgroundBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         const SizedBox(
           height: 20,
         ),
         Text(
           '${DataValues.appName} (v${DataValues.appVersion})',
             style: Theme.of(context).textTheme.bodyMedium,
         ),
         const SizedBox(
           height: 10,
         ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Text(
               DataValues.builtWith,
               style: Theme.of(context).textTheme.bodyMedium,
             ),
             const SizedBox(
               width: 5,
             ),
             const GetSourceCodeText()
           ],
         ),
         const SizedBox(
           height: 10,
         ),
         Text(
           DataValues.copyright,
           style: Theme.of(context).textTheme.bodyMedium,
         ),
         const SizedBox(
           height: 20,
         ),
       ],
      ),
    );
  }
}
