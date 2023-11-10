import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muhammad_hamza.dev/Presentation/View/responsive/Layout/responsive_body.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';
import 'package:muhammad_hamza.dev/Utils/statics.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomRichText extends StatelessWidget {
  bool isWhatsapp;
  String message , parentText , childText;
  CustomRichText({super.key, this.isWhatsapp = false , required this.message , required this.parentText , required this.childText});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ResponsiveBody.isDesktop(context) ? Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          parentText,
          style: TextStyle(
              fontSize: AppThemeData
                  .darkTheme.textTheme.titleMedium!.fontSize,
              fontWeight:  AppThemeData
                  .darkTheme.textTheme.titleLarge!.fontWeight,
              color: AppThemeData.textWhite
          ),
        ),
        const SizedBox(width: 5.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              isWhatsapp ? 
              launchUrl(DataValues.whatsappUrl) : Clipboard.setData(const ClipboardData(text: DataValues.contactEmail)
              );
              isWhatsapp ? null : ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                        'Email successfully copied to clipboard',
                        style: AppThemeData.darkTheme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
              ),
                    duration: const Duration(seconds: 2),
                  ));
            },
            child: Tooltip(
              message: message,
              child: Text(
                childText,
                style: TextStyle(
                  fontSize: AppThemeData
                      .darkTheme.textTheme.titleMedium!.fontSize,
                  fontWeight: AppThemeData
                      .darkTheme.textTheme.titleLarge!.fontWeight,
                  color: AppThemeData.textPrimary,
                ),
              ),
            )
          ),
        )
      ],
    ) : Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: size.height * 0.02,),
        Text(
          parentText,
          style: TextStyle(
              fontSize: AppThemeData
                  .darkTheme.textTheme.titleMedium!.fontSize,
              fontWeight:  AppThemeData
                  .darkTheme.textTheme.titleLarge!.fontWeight,
              color: AppThemeData.textWhite
          ),
        ),
        const SizedBox(width: 5.0),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
              onTap: () {
                isWhatsapp ?
                launchUrl(DataValues.whatsappUrl) : Clipboard.setData(const ClipboardData(text: DataValues.contactEmail)
                );
                isWhatsapp ? null : ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Email successfully copied to clipboard',
                        style: AppThemeData.darkTheme.textTheme.bodyLarge,
                        textAlign: TextAlign.center,
                      ),
                      duration: const Duration(seconds: 2),
                    ));
              },
              child: Tooltip(
                message: message,
                child: Text(
                  childText,
                  style: TextStyle(
                    fontSize: AppThemeData
                        .darkTheme.textTheme.titleMedium!.fontSize,
                    fontWeight: AppThemeData
                        .darkTheme.textTheme.titleLarge!.fontWeight,
                    color: AppThemeData.textPrimary,
                  ),
                ),
              )
          ),
        )
      ],
    );
  }
}
