import 'package:flutter/material.dart';
import 'package:news_app/app/components/navigation_helper/navigation_helper.dart';
import 'package:news_app/app/get_it/get_it.dart';
import 'package:news_app/app/screens/splash/view/splash_view.dart';

void main() {
  setupGetIT();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Navigation.navigationKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashView(),
    );
  }
}