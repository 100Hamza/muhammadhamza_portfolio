import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/custom_image_view.dart';
import 'package:muhammad_hamza.dev/Presentation/Elements/pair_custom_text.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';




class CustomCard extends StatelessWidget {
  String imageName, title , description;
  CustomCard({super.key , required this.imageName , required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppThemeData.cardGrey,
        boxShadow: [ BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          blurStyle: BlurStyle.outer,
          offset: const Offset(0, 4)
        )]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0 , horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(imageName: imageName, radius: 0,height: size.height * 0.1 , width: size.width * 0.05 ).container(),
            SizedBox(height: size.height * 0.023,),
            PairCustomText(
              context: context,
              height: 3,
              title: title,
              description: description,
              descriptionStyle: AppThemeData.darkTheme.textTheme.labelLarge,
              titleStyle: AppThemeData.darkTheme.textTheme.titleMedium,
            )
                .text(),
          ],
        ),
      ),
    );
  }
}
