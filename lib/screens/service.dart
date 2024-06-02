import 'package:flutter/material.dart';
import 'package:portfolio/widget/textwidget.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
            textWidget('Welcome To the Service Page', size: 30, weight: bold),
      ),
    );
  }
}
