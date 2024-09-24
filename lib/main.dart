import 'package:flutter/material.dart';
//import 'package:shareinfo_app/action_screen.dart';
import 'package:shareinfo_app/splash_screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home:   SplashScreen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

