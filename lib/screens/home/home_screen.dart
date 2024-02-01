import 'package:flutter/material.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              PopularProducts(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
