import 'package:flutter/material.dart';
import 'package:muhammad_hamza.dev/Presentation/View/responsive/responsive_view.dart';
import 'package:muhammad_hamza.dev/Presentation/theme/app_theme.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhammad Hamza',
      theme: AppThemeData.darkTheme,
      home: const ResponsiveView(),
    );
  }
}
