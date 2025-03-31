import 'package:flutter/material.dart';
import 'package:market/screens/home_page_screens.dart';
//import 'package:market/screens/welcome_page_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Market',
      theme: ThemeData(
        primaryColor: Color(0xFF040273),
        splashColor: Color(0xFF1B1B3A)
      ),
      home: HomePageScreens(),
    );
  }
}