import 'package:calender/view/screen/design.dart';
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
          text: 'BACK',
        ),
        Tab(
          icon: Icon(Icons.arrow_back),
          text: 'BACK',
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Design()));
          },
          child: Tab(
            icon: Icon(Icons.arrow_back),
            text: 'BACK',
          ),
        ),
      ]),
    );
  }
}
