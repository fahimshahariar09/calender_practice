import 'package:calender/view/screen/auth/forget_screen.dart';
import 'package:calender/view/screen/calender/calender_screen.dart';
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
      home: CalenderScreen(titel: "titel"),
    );
  }
}
