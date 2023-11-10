
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';

class RectangleButton extends StatelessWidget {
  String message, buttonText;
  VoidCallback onPress;
  Color color;
  RectangleButton({super.key , required this.message, required this.buttonText ,required this.onPress , required this.color});


  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(minimumSize: const Size(170, 50),
          backgroundColor: color,

          foregroundColor: AppThemeData.textWhite,
          textStyle: Theme.of(context).textTheme.titleMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0)
          )
        ),
          onPressed: onPress, child: Text(buttonText)),
    );
  }
}
