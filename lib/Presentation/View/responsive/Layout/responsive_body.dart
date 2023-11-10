import 'package:flutter/material.dart';


class ResponsiveBody extends StatelessWidget {

  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ResponsiveBody({super.key, required this.mobile, required this.tablet, required this.desktop});

  static bool isMobile (BuildContext context) => MediaQuery.sizeOf(context).width < 650;
  static bool isTablet (BuildContext context) => MediaQuery.sizeOf(context).width >=650 && MediaQuery.sizeOf(context).width < 850;
  static bool isDesktop (BuildContext context) => MediaQuery.sizeOf(context).width >= 850;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if(constraints.maxWidth >= 850)
        {
          return desktop;
        }
      else if (constraints.maxWidth >= 650 && constraints.maxWidth <850)
        {
          return tablet;
        }
      else
        {
          return mobile;
        }
    },);
  }
}
