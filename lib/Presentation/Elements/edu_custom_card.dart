import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/custom_image_view.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/view_more_button.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';


class EducationCars extends StatelessWidget {
  String imageName, degreeName, completionDate, cardTitle;
  bool isBorder, isViewMoreButton;
  Uri? url;

  EducationCars(
      {super.key,
      required this.imageName,
      required this.degreeName,
      required this.completionDate,
      required this.cardTitle,
      this.isBorder = false,
      this.url,
      this.isViewMoreButton = false});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppThemeData.cardGrey,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                blurStyle: BlurStyle.outer,
                offset: const Offset(0, 4))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
                    imageName: imageName,
                    radius: 70,
                    height: size.height * 0.16,
                    width: size.width * 0.08,
                    isBorder: isBorder)
                .container(),
            SizedBox(
              height: size.height * 0.023,
            ),
            SelectableText(
              cardTitle,
              style: TextStyle(
                fontSize:
                    AppThemeData.darkTheme.textTheme.titleMedium!.fontSize,
                fontWeight:
                    AppThemeData.darkTheme.textTheme.headlineSmall!.fontWeight,
                color: AppThemeData.textPrimary,
              ),
            ),
            SizedBox(
              height: size.height * 0.023,
            ),
            PairCustomText(
              context: context,
              height: 3,
              title: degreeName,
              description: completionDate,
              descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
              titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
            ).text(),
            isViewMoreButton ? Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: ViewMoreButton(url: url!),
            ) : Container()
          ],
        ),
      ),
    );
  }
}
