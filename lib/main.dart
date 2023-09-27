import 'package:flutter/material.dart';
import 'package:roadwise/common/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RoadWise',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: const Scaffold(),
    );
  }
}
