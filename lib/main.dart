
import 'package:flutter/material.dart';
import 'package:new_portfolio/cards/card1.dart';
import 'package:new_portfolio/splash/budget.dart';
import 'package:new_portfolio/home/screen.dart';
import 'package:new_portfolio/splash.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Card1()
    );
  }
}
