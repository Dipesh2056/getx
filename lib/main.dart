import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/home_scren.dart';
import 'package:getx/language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), home: const HomeScreen());
  }
}
