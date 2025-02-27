import 'package:calender/view/screen/auth/otp_screen.dart';
import 'package:calender/view/screen/auth/sign_in.dart';
import 'package:calender/view/screen/design.dart';
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
      home: Design(),
  );
}
}
