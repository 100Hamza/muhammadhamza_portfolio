import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/cutome_rich_text.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/social_profiles.dart';
import 'package:muhammad_hamza.dev/Presentation/View/responsive/Layout/responsive_body.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/key_holders.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';
import '../../../Elements/pair_custom_text.dart';

class DeskTopContactMe extends StatelessWidget {
  const DeskTopContactMe({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Padding(
      key: KeyHolders.contactMeKey,
      padding: const EdgeInsets.all(40.0),
      child: Column(
        children: [
          PairCustomText(
            context: context,
              isPadding: true,
              crossAxisAlignment: CrossAxisAlignment.center,
              textAlign: TextAlign.justify,
              title: DataValues.contactTitle,
              description: DataValues.contactDescription,
              descriptionStyle: AppThemeData.darkTheme.textTheme.titleSmall,
              titleStyle: AppThemeData.darkTheme.textTheme.displaySmall,
              )
              .text(),
          CustomRichText(message: DataValues.copyToClipBoard, parentText: DataValues.contactBanner, childText: DataValues.contactEmail),
          ResponsiveBody.isDesktop(context)? SizedBox(height: size.height * 0.02,) : const SizedBox(),
          CustomRichText(message: DataValues.whatsapp, isWhatsapp: true, parentText: DataValues.sendDirectMessage, childText: DataValues.whatsappNumber,),
          SizedBox(height: size.height * 0.04,),
          const SocialProfiles(),

        ],
      ),
    );
  }
}
