import 'package:flutter/material.dart';
import 'package:registration/homepage.dart';
import 'package:registration/login.dart';
import 'package:registration/registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Registerpage(),
    );
  }
}