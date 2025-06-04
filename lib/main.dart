import 'package:dirve_mate/Amodule/view/insert_car/insert_car.dart';
import 'package:dirve_mate/Amodule/view/login/login.dart';
import 'package:dirve_mate/Amodule/view/splash_screen.dart';
import 'package:dirve_mate/Bmodule/view/home/home_page.dart';
import 'package:dirve_mate/Bmodule/view/select/select_car.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
      ),
      home: Home(),
    );
  }
}