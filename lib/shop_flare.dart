import 'package:flutter/material.dart';
import 'package:shop_flare/screens/splash_screen.dart';
class ShopFlare extends StatelessWidget {
  const ShopFlare({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      title: 'ShopFlare',
    );
  }
}