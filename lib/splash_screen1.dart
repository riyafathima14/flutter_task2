import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:shareinfo_app/splash_screen2.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.asset('assets/images/main Logo.png'),
      nextScreen: const SplashScreen2(),
      backgroundColor: Colors.white,
      animationDuration: const Duration(milliseconds: 500),
    
    );
  }
}
