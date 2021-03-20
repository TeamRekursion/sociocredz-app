import 'package:flutter/material.dart';
import 'package:sociocredz/presentation/themes/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SocioCredz',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Scaffold(),
    );
  }
}
