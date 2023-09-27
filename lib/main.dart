import 'package:flutter/material.dart';
import 'package:roadwise/common/theme/app_theme.dart';
import 'package:roadwise/router/app_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'RoadWise',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      routerConfig: appRouter.config(),
    );
  }
}
