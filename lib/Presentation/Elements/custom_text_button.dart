import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String message, buttonText;
  VoidCallback onPress;
  CustomTextButton({super.key , required this.message, required this.buttonText ,required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message,
      child: TextButton(onPressed: onPress, child: Text(
        buttonText,
        style: Theme.of(context).textTheme.titleMedium,
      )),
    );
  }
}
