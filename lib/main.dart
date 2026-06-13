import 'package:flutter/material.dart';
import 'package:hungry/feature/auth/view/login_view.dart';
import 'package:hungry/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hungry App',
      home:  LoginView()
    );
  }
}


