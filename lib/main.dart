import 'package:flutter/material.dart';
import 'package:penny_path/app/app_router.dart';
import 'package:penny_path/app/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Penny path',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff7A9E9F)),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
