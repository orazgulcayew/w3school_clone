import 'package:flutter/material.dart';
import 'package:w3school_clone/bottom_navigation.dart';
import 'package:w3school_clone/pages/home.dart';
import 'package:w3school_clone/utils/scroll_behaviour.dart';

void main() {
  runApp(const W3SchoolsApp());
}

class W3SchoolsApp extends StatelessWidget {
  const W3SchoolsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HTML Öwren',
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green,
      ),
      home: const AppBottomNavigation(),
    );
  }
}
