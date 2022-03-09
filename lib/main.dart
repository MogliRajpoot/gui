import 'package:flutter/material.dart';
import 'package:gui/dashboard.dart';
import 'package:gui/otp_screen.dart';
import 'package:gui/register_screen.dart';
import 'package:gui/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.blue,
      )),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
