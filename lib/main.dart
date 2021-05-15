import 'package:flutter/material.dart';
import 'package:check_clock/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Check-Clock',
      home: Home(),
    );
  }
}

