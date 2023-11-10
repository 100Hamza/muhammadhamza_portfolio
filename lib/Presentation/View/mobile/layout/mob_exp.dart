import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/View/desktop/layout/desktop_exp.dart';


class MobileExperience extends StatelessWidget {
  const MobileExperience({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return DeskTopExperience(padding: 30.0,);
  }
}
