import 'package:flutter/material.dart';
import 'package:portfolio/screens/about.dart';
import 'package:portfolio/screens/dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: AboutPage());
  }
}
