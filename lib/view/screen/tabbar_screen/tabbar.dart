import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabbar'),
      ),
      body: TabBar(tabs: [
        Tab(
          icon: Icon(Icons.arrow_back),
        )
      ]),
    );
  }
}
