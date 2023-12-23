import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roadwise/common/theme/app_theme.dart';
import 'package:roadwise/firebase_options.dart';
import 'package:roadwise/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(
    child: MyApp(),
  ));
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
