import 'package:flutter/material.dart';

class Design extends StatelessWidget {
  const Design({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
        0.1,
        0.9
      ], colors: [
        Colors.black.withOpacity(.8),
        Colors.black.withOpacity(.1)
      ])),
),,    );
  }
}
