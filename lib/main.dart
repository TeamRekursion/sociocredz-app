import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sociocredz/presentation/screens/auth/auth_screen.dart';
import 'package:sociocredz/presentation/themes/theme.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(statusBarColor: Colors.black),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'SocioCredz',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: AuthScreen(),
    );
  }
}
