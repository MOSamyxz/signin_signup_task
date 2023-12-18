import 'package:flutter/material.dart';
import 'package:signin_signup_task/core/constants/theme.dart';
import 'package:signin_signup_task/presentation/screens/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      title: 'Flutter',
      home: const LoginScreen(),
    );
  }
}
