import 'package:flutter/material.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'routes.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bài tập bổ sung_A38732',
      theme: AppTheme.lightTheme(context),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
